package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_800:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_874:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_800);
         this.var_874 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_874;
      }
   }
}
