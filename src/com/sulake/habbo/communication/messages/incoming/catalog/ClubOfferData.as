package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1677:String;
      
      private var var_1599:int;
      
      private var var_2102:Boolean;
      
      private var var_2097:Boolean;
      
      private var var_2099:int;
      
      private var var_2098:int;
      
      private var var_2101:int;
      
      private var var_2103:int;
      
      private var var_2100:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1677 = param1.readString();
         this.var_1599 = param1.readInteger();
         this.var_2102 = param1.readBoolean();
         this.var_2097 = param1.readBoolean();
         this.var_2099 = param1.readInteger();
         this.var_2098 = param1.readInteger();
         this.var_2101 = param1.readInteger();
         this.var_2103 = param1.readInteger();
         this.var_2100 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1677;
      }
      
      public function get price() : int
      {
         return this.var_1599;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2102;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2097;
      }
      
      public function get periods() : int
      {
         return this.var_2099;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2098;
      }
      
      public function get year() : int
      {
         return this.var_2101;
      }
      
      public function get month() : int
      {
         return this.var_2103;
      }
      
      public function get day() : int
      {
         return this.var_2100;
      }
   }
}
