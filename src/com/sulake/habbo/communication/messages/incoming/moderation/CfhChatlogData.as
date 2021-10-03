package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1812:int;
      
      private var var_2548:int;
      
      private var var_1354:int;
      
      private var var_2382:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1812 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         this.var_1354 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1812);
      }
      
      public function get callId() : int
      {
         return this.var_1812;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2548;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1354;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2382;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_111;
      }
   }
}
