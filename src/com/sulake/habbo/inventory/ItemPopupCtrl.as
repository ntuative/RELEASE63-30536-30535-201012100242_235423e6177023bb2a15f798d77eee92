package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_914:int = 1;
      
      public static const const_536:int = 2;
      
      private static const const_883:int = 5;
      
      private static const const_1237:int = 250;
      
      private static const const_1239:int = 100;
      
      private static const const_1236:int = 180;
      
      private static const const_1238:int = 200;
       
      
      private var var_340:Timer;
      
      private var var_341:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_75:IWindowContainer;
      
      private var var_13:IWindowContainer;
      
      private var var_1804:int = 2;
      
      private var var_734:BitmapData;
      
      private var var_908:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_340 = new Timer(const_1237,1);
         this.var_341 = new Timer(const_1239,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_75 = param1;
         this.var_75.visible = false;
         this._assets = param2;
         this.var_340.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_341.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_908 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_734 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_340 != null)
         {
            this.var_340.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_340.stop();
            this.var_340 = null;
         }
         if(this.var_341 != null)
         {
            this.var_341.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_341.stop();
            this.var_341 = null;
         }
         this._assets = null;
         this.var_75 = null;
         this.var_13 = null;
         this.var_734 = null;
         this.var_908 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_75 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this.var_13 != null)
         {
            this.var_13.removeChild(this.var_75);
         }
         this.var_13 = param1;
         this.var_1804 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_75.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_75.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1236,param3.width),Math.min(const_1238,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_75.width - _loc6_.width) / 2;
            this.var_75.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_341.reset();
         this.var_340.reset();
         if(this.var_13 == null)
         {
            return;
         }
         this.var_75.visible = true;
         this.var_13.addChild(this.var_75);
         this.refreshArrow(this.var_1804);
         switch(this.var_1804)
         {
            case const_914:
               this.var_75.x = -1 * this.var_75.width - const_883;
               break;
            case const_536:
               this.var_75.x = this.var_13.width + const_883;
         }
         this.var_75.y = (this.var_13.height - this.var_75.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_75.visible = false;
         this.var_341.reset();
         this.var_340.reset();
         if(this.var_13 != null)
         {
            this.var_13.removeChild(this.var_75);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_341.reset();
         this.var_340.reset();
         this.var_340.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_341.reset();
         this.var_340.reset();
         this.var_341.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_75 == null || this.var_75.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_75.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_914:
               _loc2_.bitmap = this.var_908.clone();
               _loc2_.width = this.var_908.width;
               _loc2_.height = this.var_908.height;
               _loc2_.y = (this.var_75.height - this.var_908.height) / 2;
               _loc2_.x = this.var_75.width - 1;
               break;
            case const_536:
               _loc2_.bitmap = this.var_734.clone();
               _loc2_.width = this.var_734.width;
               _loc2_.height = this.var_734.height;
               _loc2_.y = (this.var_75.height - this.var_734.height) / 2;
               _loc2_.x = -1 * this.var_734.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
