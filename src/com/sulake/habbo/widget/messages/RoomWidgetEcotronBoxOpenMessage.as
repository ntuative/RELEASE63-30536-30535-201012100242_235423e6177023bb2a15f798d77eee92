package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_778:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_322:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_322 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_322;
      }
   }
}
