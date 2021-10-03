package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_158:int = 1;
      
      public static const const_334:int = 2;
      
      public static const const_1439:int = 3;
       
      
      private var var_2249:int;
      
      private var _state:int;
      
      private var var_1363:int;
      
      private var var_2383:int;
      
      private var var_1729:int;
      
      private var var_2385:int;
      
      private var var_2384:int = 0;
      
      private var var_2388:int;
      
      private var var_2389:String;
      
      private var var_1354:int;
      
      private var var_1756:String;
      
      private var var_2146:int;
      
      private var var_2379:String;
      
      private var _message:String;
      
      private var var_2382:int;
      
      private var var_906:String;
      
      private var var_1606:int;
      
      private var var_2380:String;
      
      private var var_314:int;
      
      private var var_2381:String;
      
      private var var_2387:String;
      
      private var var_2386:int;
      
      private var var_2074:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2249;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1363;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2383;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1729;
      }
      
      public function get priority() : int
      {
         return this.var_2385 + this.var_2384;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2388;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2389;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1354;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1756;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2146;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2379;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2382;
      }
      
      public function get roomName() : String
      {
         return this.var_906;
      }
      
      public function get roomType() : int
      {
         return this.var_1606;
      }
      
      public function get flatType() : String
      {
         return this.var_2380;
      }
      
      public function get flatId() : int
      {
         return this.var_314;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2381;
      }
      
      public function get roomResources() : String
      {
         return this.var_2387;
      }
      
      public function get unitPort() : int
      {
         return this.var_2386;
      }
      
      public function get worldId() : int
      {
         return this.var_2074;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2249 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1363 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2383 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1729 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2385 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2384 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2389 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1354 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1756 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2146 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2379 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_2382 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_906 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1606 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2380 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_314 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2381 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2387 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2074 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1729) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
