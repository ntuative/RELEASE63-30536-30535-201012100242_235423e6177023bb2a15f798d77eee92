package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2038:int;
      
      private var var_2410:int;
      
      private var var_2412:String;
      
      private var var_2411:String;
      
      private var var_2413:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2038 = param1;
         this.var_2410 = param2;
         this.var_2412 = param3;
         this.var_2411 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2038;
      }
      
      public function get length() : int
      {
         return this.var_2410;
      }
      
      public function get name() : String
      {
         return this.var_2412;
      }
      
      public function get creator() : String
      {
         return this.var_2411;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2413;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2413 = param1;
      }
   }
}
