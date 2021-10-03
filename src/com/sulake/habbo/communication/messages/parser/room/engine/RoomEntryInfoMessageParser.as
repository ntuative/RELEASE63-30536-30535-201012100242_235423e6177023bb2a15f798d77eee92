package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1589:Boolean;
      
      private var var_2179:int;
      
      private var var_376:Boolean;
      
      private var var_1017:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1589;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2179;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1017;
      }
      
      public function get owner() : Boolean
      {
         return this.var_376;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1017 != null)
         {
            this.var_1017.dispose();
            this.var_1017 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1589 = param1.readBoolean();
         if(this.var_1589)
         {
            this.var_2179 = param1.readInteger();
            this.var_376 = param1.readBoolean();
         }
         else
         {
            this.var_1017 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
