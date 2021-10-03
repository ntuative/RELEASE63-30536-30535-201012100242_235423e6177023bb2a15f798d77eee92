package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1969:int;
      
      private var var_1359:String;
      
      private var _objId:int;
      
      private var var_1499:int;
      
      private var _category:int;
      
      private var var_1882:String;
      
      private var var_1971:Boolean;
      
      private var var_1968:Boolean;
      
      private var var_1972:Boolean;
      
      private var var_1967:Boolean;
      
      private var var_1970:int;
      
      private var var_1314:int;
      
      private var var_1580:String = "";
      
      private var var_2038:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_1969 = param1;
         this.var_1359 = param2;
         this._objId = param3;
         this.var_1499 = param4;
         this._category = param5;
         this.var_1882 = param6;
         this.var_1971 = param7;
         this.var_1968 = param8;
         this.var_1972 = param9;
         this.var_1967 = param10;
         this.var_1970 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1580 = param1;
         this.var_1314 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_1969;
      }
      
      public function get itemType() : String
      {
         return this.var_1359;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1499;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1882;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_1971;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_1968;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_1972;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_1967;
      }
      
      public function get expiryTime() : int
      {
         return this.var_1970;
      }
      
      public function get slotId() : String
      {
         return this.var_1580;
      }
      
      public function get songId() : int
      {
         return this.var_2038;
      }
      
      public function get extra() : int
      {
         return this.var_1314;
      }
   }
}
