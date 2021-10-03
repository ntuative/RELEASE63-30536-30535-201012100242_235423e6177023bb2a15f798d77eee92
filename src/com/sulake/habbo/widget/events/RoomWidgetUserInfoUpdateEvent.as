package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_247:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_227:String = "RWUIUE_PEER";
      
      public static const const_1285:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_899:int = 2;
      
      public static const const_960:int = 3;
      
      public static const const_1454:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1632:String = "";
      
      private var var_1901:int;
      
      private var var_2012:int = 0;
      
      private var var_2013:int = 0;
      
      private var var_562:String = "";
      
      private var var_39:BitmapData = null;
      
      private var var_238:Array;
      
      private var var_1399:int = 0;
      
      private var var_2086:String = "";
      
      private var var_2076:int = 0;
      
      private var var_2078:int = 0;
      
      private var var_1834:Boolean = false;
      
      private var var_1633:String = "";
      
      private var var_2083:Boolean = false;
      
      private var var_2079:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2075:Boolean = false;
      
      private var var_2082:Boolean = false;
      
      private var var_2081:Boolean = false;
      
      private var var_2084:Boolean = false;
      
      private var var_2085:Boolean = false;
      
      private var var_2077:Boolean = false;
      
      private var var_2080:int = 0;
      
      private var var_1833:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_238 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1632 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1632;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1901 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1901;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2012 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2012;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2013 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2013;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_562 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_39 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_238 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_238;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1399 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1399;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2086 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2086;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2083 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2083;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2075 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2075;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2082 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2082;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2081 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2081;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2084 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2084;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2085 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2085;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2077 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2077;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2080 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2080;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2079 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2079;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1833 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1833;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2076 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2076;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2078 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2078;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1834 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1834;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1633 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1633;
      }
   }
}
