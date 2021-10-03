package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_235:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2217:int = 0;
      
      private var var_2218:int = 0;
      
      private var var_2221:int = 0;
      
      private var var_2219:Boolean = false;
      
      private var var_2220:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_235,param6,param7);
         this.var_2217 = param1;
         this.var_2218 = param2;
         this.var_2221 = param3;
         this.var_2219 = param4;
         this.var_2220 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2217;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2218;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2221;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2219;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2220;
      }
   }
}
