package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1580:int;
      
      private var var_1960:String;
      
      private var var_827:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1580 = param1.readInteger();
         this.var_1960 = param1.readString();
         this.var_827 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1580;
      }
      
      public function get figureString() : String
      {
         return this.var_1960;
      }
      
      public function get gender() : String
      {
         return this.var_827;
      }
   }
}
