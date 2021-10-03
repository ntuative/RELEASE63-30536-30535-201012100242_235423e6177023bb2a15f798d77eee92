package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_644:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_150:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_322:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_322;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_322 = param1;
      }
   }
}
