package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_684:int = 1;
      
      public static const const_589:int = 2;
      
      public static const const_728:int = 3;
      
      public static const const_993:int = 4;
      
      public static const const_750:int = 5;
      
      public static const const_1042:int = 6;
       
      
      private var _type:int;
      
      private var var_1084:int;
      
      private var var_1922:String;
      
      private var var_1921:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1084 = param2;
         this.var_1922 = param3;
         this.var_1921 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1922;
      }
      
      public function get time() : String
      {
         return this.var_1921;
      }
      
      public function get senderId() : int
      {
         return this.var_1084;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
