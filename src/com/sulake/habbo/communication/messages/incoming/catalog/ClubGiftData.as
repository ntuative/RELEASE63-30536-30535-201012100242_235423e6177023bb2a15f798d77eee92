package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var _offerId:int;
      
      private var var_2588:Boolean;
      
      private var var_2236:Boolean;
      
      private var var_2587:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_2588 = param1.readBoolean();
         this.var_2587 = param1.readInteger();
         this.var_2236 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2588;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2236;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2587;
      }
   }
}
