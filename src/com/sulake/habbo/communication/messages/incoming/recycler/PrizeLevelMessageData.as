package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1307:int;
      
      private var include:int;
      
      private var var_729:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1307 = param1.readInteger();
         this.include = param1.readInteger();
         this.var_729 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_729.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get prizeLevelId() : int
      {
         return this.var_1307;
      }
      
      public function get probabilityDenominator() : int
      {
         return this.include;
      }
      
      public function get prizes() : Array
      {
         return this.var_729;
      }
   }
}
