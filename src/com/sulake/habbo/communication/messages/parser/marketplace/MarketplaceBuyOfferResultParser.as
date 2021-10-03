package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceBuyOfferResultParser implements IMessageParser
   {
       
      
      private var _result:int;
      
      private var var_2211:int = -1;
      
      private var var_2210:int = -1;
      
      private var var_2209:int = -1;
      
      public function MarketplaceBuyOfferResultParser()
      {
         super();
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get offerId() : int
      {
         return this.var_2211;
      }
      
      public function get newPrice() : int
      {
         return this.var_2210;
      }
      
      public function get requestedOfferId() : int
      {
         return this.var_2209;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._result = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this.var_2210 = param1.readInteger();
         this.var_2209 = param1.readInteger();
         return true;
      }
   }
}
