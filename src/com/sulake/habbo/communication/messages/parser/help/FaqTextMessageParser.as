package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1547:int;
      
      private var var_1546:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_1547;
      }
      
      public function get answerText() : String
      {
         return this.var_1546;
      }
      
      public function flush() : Boolean
      {
         this.var_1547 = -1;
         this.var_1546 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1547 = param1.readInteger();
         this.var_1546 = param1.readString();
         return true;
      }
   }
}
