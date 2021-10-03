package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_649:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1478:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_649,false,false);
         this.var_1478 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1478;
      }
   }
}
