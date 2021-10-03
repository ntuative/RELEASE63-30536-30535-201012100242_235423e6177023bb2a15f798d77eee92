package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1893:int;
      
      private var var_2156:int;
      
      private var var_2158:int;
      
      private var _dayOffsets:Array;
      
      private var var_1772:Array;
      
      private var var_1771:Array;
      
      private var var_2157:int;
      
      private var var_2159:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1893;
      }
      
      public function get offerCount() : int
      {
         return this.var_2156;
      }
      
      public function get historyLength() : int
      {
         return this.var_2158;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1772;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1771;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2157;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2159;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1893 = param1.readInteger();
         this.var_2156 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1772 = [];
         this.var_1771 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1772.push(param1.readInteger());
            this.var_1771.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2159 = param1.readInteger();
         this.var_2157 = param1.readInteger();
         return true;
      }
   }
}
