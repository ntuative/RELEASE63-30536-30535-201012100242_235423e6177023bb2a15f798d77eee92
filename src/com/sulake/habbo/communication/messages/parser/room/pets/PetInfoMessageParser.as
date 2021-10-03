package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1674:int;
      
      private var _name:String;
      
      private var var_1556:int;
      
      private var var_2305:int;
      
      private var var_1951:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_562:String;
      
      private var var_2304:int;
      
      private var var_2302:int;
      
      private var var_2303:int;
      
      private var var_2239:int;
      
      private var var_1959:int;
      
      private var _ownerName:String;
      
      private var var_1956:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1674;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1556;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2305;
      }
      
      public function get experience() : int
      {
         return this.var_1951;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2304;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2302;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2303;
      }
      
      public function get respect() : int
      {
         return this.var_2239;
      }
      
      public function get ownerId() : int
      {
         return this.var_1959;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_1956;
      }
      
      public function flush() : Boolean
      {
         this.var_1674 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1674 = param1.readInteger();
         this._name = param1.readString();
         this.var_1556 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_1951 = param1.readInteger();
         this.var_2304 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2302 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2303 = param1.readInteger();
         this.var_562 = param1.readString();
         this.var_2239 = param1.readInteger();
         this.var_1959 = param1.readInteger();
         this.var_1956 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
