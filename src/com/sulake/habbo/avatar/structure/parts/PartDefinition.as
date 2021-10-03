package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2315:String;
      
      private var var_1680:String;
      
      private var var_2314:String;
      
      private var var_1681:Boolean;
      
      private var var_1682:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2315 = String(param1["set-type"]);
         this.var_1680 = String(param1["flipped-set-type"]);
         this.var_2314 = String(param1["remove-set-type"]);
         this.var_1681 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1682 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1682;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1682 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2315;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1680;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2314;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1681;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1681 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1680 = param1;
      }
   }
}
