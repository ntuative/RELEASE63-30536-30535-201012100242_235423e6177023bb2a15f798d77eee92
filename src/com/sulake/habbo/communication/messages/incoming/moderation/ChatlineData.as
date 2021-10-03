package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2470:int;
      
      private var var_2471:int;
      
      private var var_2472:int;
      
      private var var_2473:String;
      
      private var var_1775:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2470 = param1.readInteger();
         this.var_2471 = param1.readInteger();
         this.var_2472 = param1.readInteger();
         this.var_2473 = param1.readString();
         this.var_1775 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2470;
      }
      
      public function get minute() : int
      {
         return this.var_2471;
      }
      
      public function get chatterId() : int
      {
         return this.var_2472;
      }
      
      public function get chatterName() : String
      {
         return this.var_2473;
      }
      
      public function get msg() : String
      {
         return this.var_1775;
      }
   }
}
