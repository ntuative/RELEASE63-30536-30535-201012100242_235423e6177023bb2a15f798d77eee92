package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_2356:String;
      
      private var var_1711:int;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2356 = param1.readString();
         this.var_1711 = param1.readInteger();
      }
      
      public function get productItemType() : String
      {
         return this.var_2356;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_1711;
      }
   }
}
