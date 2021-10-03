package com.sulake.habbo.localization
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.TextAsset;
   import com.sulake.core.localization.CoreLocalizationManager;
   import com.sulake.core.localization.enum.LocalizationEvent;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.enum.HabboLocalizationFlags;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboLocalizationManager extends CoreLocalizationManager implements IHabboLocalizationManager
   {
      
      private static var var_1209:String = "%";
       
      
      private var var_154:IHabboConfigurationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1718:Boolean = false;
      
      public function HabboLocalizationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_1718 = (param2 & 0) > 0;
         if(!this.var_1718)
         {
            lock();
         }
         queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationInit);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         var _loc4_:TextAsset = param3.getAssetByName("default_localization") as TextAsset;
         parseLocalizationData(_loc4_.content.toString());
      }
      
      override public function dispose() : void
      {
         if(this.var_154)
         {
            this.var_154.release(new IIDHabboConfigurationManager());
            this.var_154 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         super.dispose();
      }
      
      public function getKeyWithParams(param1:String, param2:Dictionary = null, param3:String = "") : String
      {
         var _loc4_:String = getKey(param1);
         if(param2 != null)
         {
            _loc4_ = this.fillParams(_loc4_,param2);
         }
         return _loc4_;
      }
      
      private function fillParams(param1:String, param2:Dictionary) : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = param1.indexOf(var_1209);
            if(_loc4_ < 0)
            {
               break;
            }
            _loc5_ = param1.indexOf(var_1209,_loc4_ + 1);
            if(_loc5_ < 0)
            {
               break;
            }
            _loc6_ = param1.substring(_loc4_ + 1,_loc5_);
            _loc7_ = param2[_loc6_];
            param1 = param1.replace("%" + _loc6_ + "%",_loc7_);
            _loc3_++;
         }
         return param1;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
      }
      
      private function showKeys(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
         printNonExistingKeys();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param2 != null)
         {
            this.var_154 = param2 as IHabboConfigurationManager;
            _loc3_ = "";
            _loc3_ = this.var_154.getKey("url.prefix",_loc3_);
            _loc3_ = _loc3_.replace("http://","");
            _loc3_ = _loc3_.replace("https://","");
            super.setPredefinedUrl(_loc3_);
            if(!this.var_1718)
            {
               if("false" == this.var_154.getKey("use.default.localizations","false"))
               {
                  _loc5_ = this.var_154.getKey("external.texts.txt","external_texts.txt");
                  events.addEventListener(LocalizationEvent.const_153,this.onLocalizationLoaded);
                  super.loadLocalizationFromURL(_loc5_);
               }
            }
            _loc4_ = 1;
            while(this.var_154.keyExists("localization." + _loc4_))
            {
               _loc6_ = this.var_154.getKey("localization." + _loc4_,"");
               _loc7_ = this.var_154.getKey("localization." + _loc4_ + ".name","");
               _loc8_ = this.var_154.getKey("localization." + _loc4_ + ".url","");
               super.registerLocalizationDefinition(_loc6_,_loc7_,_loc8_);
               _loc4_++;
            }
         }
      }
      
      public function onLocalizationLoaded(param1:Event) : void
      {
         var _loc2_:* = null;
         events.removeEventListener(LocalizationEvent.const_153,this.onLocalizationLoaded);
         if(this.var_154.keyExists("external.override.texts.txt"))
         {
            _loc2_ = this.var_154.getKey("external.override.texts.txt");
            events.addEventListener(LocalizationEvent.const_153,this.onLocalizationOverrideLoaded);
            super.loadLocalizationFromURL(_loc2_);
         }
         else
         {
            unlock();
         }
      }
      
      public function onLocalizationOverrideLoaded(param1:Event) : void
      {
         events.removeEventListener(LocalizationEvent.const_153,this.onLocalizationOverrideLoaded);
         unlock();
      }
      
      private function checkDefaultKeys() : void
      {
         var _loc6_:* = null;
         var _loc1_:TextAsset = assets.getAssetByName("keys_in_use") as TextAsset;
         var _loc2_:String = _loc1_.content.toString();
         var _loc3_:RegExp = /\n\r{1,}|\n{1,}|\r{1,}/mg;
         var _loc4_:RegExp = /^\s+|\s+$/g;
         var _loc5_:Array = _loc2_.split(_loc3_);
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_.substr(0,1) != "#")
            {
               if(_loc6_.length != 0)
               {
                  if(getLocalization(_loc6_) == null)
                  {
                     Logger.log(_loc6_);
                  }
               }
            }
         }
      }
   }
}
