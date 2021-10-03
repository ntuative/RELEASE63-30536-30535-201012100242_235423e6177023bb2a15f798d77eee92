package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1556:int;
      
      private var var_1739:int;
      
      private var var_2105:int;
      
      private var var_1555:int;
      
      private var var_1250:int;
      
      private var var_2266:String = "";
      
      private var var_2563:String = "";
      
      private var var_2562:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1556 = param1.readInteger();
         this.var_2266 = param1.readString();
         this.var_1739 = param1.readInteger();
         this.var_2105 = param1.readInteger();
         this.var_1555 = param1.readInteger();
         this.var_1250 = param1.readInteger();
         this.var_2562 = param1.readInteger();
         this.var_2563 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1556;
      }
      
      public function get points() : int
      {
         return this.var_1739;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2105;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1555;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1250;
      }
      
      public function get badgeID() : String
      {
         return this.var_2266;
      }
      
      public function get achievementID() : int
      {
         return this.var_2562;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2563;
      }
   }
}
