package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2171:String;
      
      private var var_2280:Array;
      
      private var var_2281:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2171 = param1;
         this.var_2280 = param2;
         this.var_2281 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2171;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2280;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2281;
      }
   }
}
