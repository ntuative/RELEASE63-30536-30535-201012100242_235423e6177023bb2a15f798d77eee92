package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1479:int;
      
      private var var_1481:int;
      
      private var var_1480:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1481 = param1.readInteger();
         this.var_1479 = param1.readInteger();
         this.var_1480 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1479 = 0;
         this.var_1481 = 0;
         this.var_1480 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1479;
      }
      
      public function get messageId() : int
      {
         return this.var_1481;
      }
      
      public function get timestamp() : String
      {
         return this.var_1480;
      }
   }
}
