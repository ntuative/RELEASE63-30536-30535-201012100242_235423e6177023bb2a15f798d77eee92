package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_478:int = -2.147483648E9;
      
      private var var_480:int = 2.147483647E9;
      
      private var var_479:int = -2.147483648E9;
      
      private var var_481:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_478;
      }
      
      public function get maxWidth() : int
      {
         return this.var_480;
      }
      
      public function get minHeight() : int
      {
         return this.var_479;
      }
      
      public function get maxHeight() : int
      {
         return this.var_481;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_478 = param1;
         if(this.var_478 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_478)
         {
            this._target.width = this.var_478;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_480 = param1;
         if(this.var_480 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_480)
         {
            this._target.width = this.var_480;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_479 = param1;
         if(this.var_479 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_479)
         {
            this._target.height = this.var_479;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_481 = param1;
         if(this.var_481 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_481)
         {
            this._target.height = this.var_481;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_478 == int.MIN_VALUE && this.var_480 == int.MAX_VALUE && this.var_479 == int.MIN_VALUE && this.var_481 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_478 = int.MIN_VALUE;
         this.var_480 = int.MAX_VALUE;
         this.var_479 = int.MIN_VALUE;
         this.var_481 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_478 = this.var_478;
         _loc2_.var_480 = this.var_480;
         _loc2_.var_479 = this.var_479;
         _loc2_.var_481 = this.var_481;
         return _loc2_;
      }
   }
}
