package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MeMenuSoundSettingsSlider
   {
       
      
      private var var_1014:MeMenuSoundSettingsView;
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_640:BitmapData;
      
      private var var_641:BitmapData;
      
      private var var_1467:int;
      
      private var _minValue:Number = 0.0;
      
      private var var_962:Number = 1.0;
      
      public function MeMenuSoundSettingsSlider(param1:MeMenuSoundSettingsView, param2:IWindowContainer, param3:IAssetLibrary, param4:Number = 0.0, param5:Number = 1.0)
      {
         super();
         this.var_1014 = param1;
         this._sliderContainer = param2;
         this._minValue = param4;
         this.var_962 = param5;
         this.storeAssets(param3);
         this.displaySlider();
      }
      
      public function dispose() : void
      {
         this.var_1014 = null;
         this._sliderContainer = null;
         this.var_640 = null;
         this.var_641 = null;
      }
      
      public function setValue(param1:Number) : void
      {
         if(this._sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = this._sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = this.getSliderPosition(param1);
         }
      }
      
      public function set min(param1:Number) : void
      {
         this._minValue = param1;
         this.setValue(this.var_1014.volume);
      }
      
      public function set max(param1:Number) : void
      {
         this.var_962 = param1;
         this.setValue(this.var_1014.volume);
      }
      
      private function getSliderPosition(param1:Number) : int
      {
         return int(this.var_1467 * (Number(param1 - this._minValue) / (this.var_962 - this._minValue)));
      }
      
      private function getValue(param1:Number) : Number
      {
         return param1 / this.var_1467 * (this.var_962 - this._minValue) + this._minValue;
      }
      
      private function buttonProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_349)
         {
            return;
         }
         this.var_1014.saveVolume(this.getValue(param2.x),false);
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._sliderContainer == null)
         {
            return;
         }
         _loc2_ = this._sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc2_ != null && this.var_640 != null)
         {
            _loc2_.bitmap = new BitmapData(this.var_640.width,this.var_640.height,true,16777215);
            _loc2_.bitmap.copyPixels(this.var_640,this.var_640.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = this._sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IBitmapWrapperWindow;
            if(_loc2_ != null && this.var_641 != null)
            {
               _loc2_.bitmap = new BitmapData(this.var_641.width,this.var_641.height,true,16777215);
               _loc2_.bitmap.copyPixels(this.var_641,this.var_641.rect,new Point(0,0),null,null,true);
               _loc2_.procedure = this.buttonProcedure;
               this.var_1467 = _loc1_.width - _loc2_.width;
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_base"));
         this.var_640 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_button"));
         this.var_641 = BitmapData(_loc2_.content);
      }
   }
}
