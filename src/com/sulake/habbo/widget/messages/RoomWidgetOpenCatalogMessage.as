package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_680:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_958:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2222:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_680);
         this.var_2222 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2222;
      }
   }
}
