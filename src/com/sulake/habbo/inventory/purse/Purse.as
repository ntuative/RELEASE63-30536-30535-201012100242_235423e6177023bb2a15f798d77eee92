package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1826:int = 0;
      
      private var var_1827:int = 0;
      
      private var var_2567:int = 0;
      
      private var var_2568:Boolean = false;
      
      private var var_2432:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1826 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1827 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2567 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2568 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2432 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1826;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1827;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2567;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2568;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2432;
      }
   }
}
