package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_118:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_122:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1045:String;
      
      private var var_1291:Array;
      
      private var var_974:Array;
      
      private var var_1629:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1045 = param2;
         this.var_1291 = param3;
         this.var_974 = param4;
         if(this.var_974 == null)
         {
            this.var_974 = [];
         }
         this.var_1629 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1045;
      }
      
      public function get choices() : Array
      {
         return this.var_1291.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_974.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1629;
      }
   }
}
