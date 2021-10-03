package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_605:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1071:String = "inventory_effects";
      
      public static const const_1060:String = "inventory_badges";
      
      public static const const_1263:String = "inventory_clothes";
      
      public static const const_1281:String = "inventory_furniture";
       
      
      private var var_2417:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_605);
         this.var_2417 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2417;
      }
   }
}
