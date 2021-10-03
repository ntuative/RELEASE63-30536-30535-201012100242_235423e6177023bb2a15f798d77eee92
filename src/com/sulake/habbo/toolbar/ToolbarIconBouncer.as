package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2069:Number;
      
      private var var_2068:Number;
      
      private var var_806:Number;
      
      private var var_805:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2069 = param1;
         this.var_2068 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_806 = param1;
         this.var_805 = 0;
      }
      
      public function update() : void
      {
         this.var_806 += this.var_2068;
         this.var_805 += this.var_806;
         if(this.var_805 > 0)
         {
            this.var_805 = 0;
            this.var_806 = this.var_2069 * -1 * this.var_806;
         }
      }
      
      public function get location() : Number
      {
         return this.var_805;
      }
   }
}
