package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_118:String = "RSPE_VOTE_QUESTION";
      
      public static const const_122:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1045:String = "";
      
      private var var_1291:Array;
      
      private var var_974:Array;
      
      private var var_1629:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1291 = [];
         this.var_974 = [];
         super(param1,param2,param7,param8);
         this.var_1045 = param3;
         this.var_1291 = param4;
         this.var_974 = param5;
         if(this.var_974 == null)
         {
            this.var_974 = [];
         }
         this.var_1629 = param6;
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
