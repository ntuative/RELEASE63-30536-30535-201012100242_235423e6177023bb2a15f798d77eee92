package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1882:String;
      
      protected var var_1314:Number;
      
      protected var var_2596:Boolean;
      
      protected var var_2595:Boolean;
      
      protected var var_2522:Boolean;
      
      protected var var_2594:Boolean;
      
      protected var var_2597:int;
      
      protected var var_2521:int;
      
      protected var var_2525:int;
      
      protected var var_2519:int;
      
      protected var var_1580:String;
      
      protected var var_2038:int;
      
      protected var var_890:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2522 = param5;
         this.var_2595 = param6;
         this.var_2596 = param7;
         this.var_2594 = param8;
         this.var_1882 = param9;
         this.var_1314 = param10;
         this.var_2597 = param11;
         this.var_2521 = param12;
         this.var_2525 = param13;
         this.var_2519 = param14;
         this.var_1580 = param15;
         this.var_2038 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1882;
      }
      
      public function get extra() : Number
      {
         return this.var_1314;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2596;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2595;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2522;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2594;
      }
      
      public function get expires() : int
      {
         return this.var_2597;
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
      
      public function get slotId() : String
      {
         return this.var_1580;
      }
      
      public function get songId() : int
      {
         return this.var_2038;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_890 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_890;
      }
   }
}
