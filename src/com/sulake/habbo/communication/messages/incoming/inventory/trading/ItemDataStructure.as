package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2466:int;
      
      private var var_1359:String;
      
      private var var_2524:int;
      
      private var var_2520:int;
      
      private var _category:int;
      
      private var var_1882:String;
      
      private var var_1314:int;
      
      private var var_2523:int;
      
      private var var_2521:int;
      
      private var var_2525:int;
      
      private var var_2519:int;
      
      private var var_2522:Boolean;
      
      private var var_2682:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2466 = param1;
         this.var_1359 = param2;
         this.var_2524 = param3;
         this.var_2520 = param4;
         this._category = param5;
         this.var_1882 = param6;
         this.var_1314 = param7;
         this.var_2523 = param8;
         this.var_2521 = param9;
         this.var_2525 = param10;
         this.var_2519 = param11;
         this.var_2522 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2466;
      }
      
      public function get itemType() : String
      {
         return this.var_1359;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2524;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2520;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1882;
      }
      
      public function get extra() : int
      {
         return this.var_1314;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2523;
      }
      
      public function get creationDay() : int
      {
         return this.var_2521;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2525;
      }
      
      public function get creationYear() : int
      {
         return this.var_2519;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2522;
      }
      
      public function get songID() : int
      {
         return this.var_1314;
      }
   }
}
