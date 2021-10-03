package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1674:int;
      
      private var var_1556:int;
      
      private var var_1958:int;
      
      private var var_1951:int;
      
      private var var_1954:int;
      
      private var _energy:int;
      
      private var var_1953:int;
      
      private var _nutrition:int;
      
      private var var_1950:int;
      
      private var var_1959:int;
      
      private var _ownerName:String;
      
      private var var_2239:int;
      
      private var var_1956:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1674;
      }
      
      public function get level() : int
      {
         return this.var_1556;
      }
      
      public function get levelMax() : int
      {
         return this.var_1958;
      }
      
      public function get experience() : int
      {
         return this.var_1951;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1954;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1953;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1950;
      }
      
      public function get ownerId() : int
      {
         return this.var_1959;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2239;
      }
      
      public function get age() : int
      {
         return this.var_1956;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1674 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1556 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1958 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1951 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1954 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1953 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1950 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1959 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2239 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_1956 = param1;
      }
   }
}
