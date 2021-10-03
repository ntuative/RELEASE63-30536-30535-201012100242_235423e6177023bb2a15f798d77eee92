package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1528:int = 0;
      
      private var var_1529:int = 0;
      
      private var var_1439:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1528;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1529;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1439;
      }
      
      public function flush() : Boolean
      {
         this.var_1528 = 0;
         this.var_1529 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1528 = param1.readInteger();
         this.var_1529 = param1.readInteger();
         this.var_1439 = param1.readInteger();
         return true;
      }
   }
}
