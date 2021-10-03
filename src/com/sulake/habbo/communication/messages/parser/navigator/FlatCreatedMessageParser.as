package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_314:int;
      
      private var var_1753:String;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_314 = param1.readInteger();
         this.var_1753 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_314 + ", " + this.var_1753);
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_314;
      }
      
      public function get flatName() : String
      {
         return this.var_1753;
      }
   }
}
