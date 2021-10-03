package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_218:String = "ROE_MOUSE_CLICK";
      
      public static const const_1723:String = "ROE_MOUSE_ENTER";
      
      public static const const_485:String = "ROE_MOUSE_MOVE";
      
      public static const const_1711:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1602:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_454:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1486:String = "";
      
      private var var_2057:Boolean;
      
      private var var_2054:Boolean;
      
      private var var_2055:Boolean;
      
      private var var_2056:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1486 = param2;
         this.var_2057 = param5;
         this.var_2054 = param6;
         this.var_2055 = param7;
         this.var_2056 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1486;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2057;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2054;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2055;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2056;
      }
   }
}
