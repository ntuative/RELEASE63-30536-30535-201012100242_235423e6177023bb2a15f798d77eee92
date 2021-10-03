package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_439:int = 0;
       
      
      private var var_2444:int = 0;
      
      private var var_1400:Dictionary;
      
      private var var_1826:int = 0;
      
      private var var_1827:int = 0;
      
      private var var_2432:Boolean = false;
      
      private var var_2429:int = 0;
      
      private var var_2428:int = 0;
      
      public function Purse()
      {
         this.var_1400 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2444;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2444 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1826;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1826 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1827;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1827 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1826 > 0 || this.var_1827 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2432;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2432 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2429;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2429 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2428;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2428 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1400;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1400 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1400[param1];
      }
   }
}
