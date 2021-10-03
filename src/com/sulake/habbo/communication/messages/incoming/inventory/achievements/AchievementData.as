package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1556:int;
      
      private var var_266:String;
      
      private var var_2589:int;
      
      private var var_2105:int;
      
      private var var_1555:int;
      
      private var var_2590:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1556 = param1.readInteger();
         this.var_266 = param1.readString();
         this.var_2589 = param1.readInteger();
         this.var_2105 = param1.readInteger();
         this.var_1555 = param1.readInteger();
         this.var_2590 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_266;
      }
      
      public function get level() : int
      {
         return this.var_1556;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2589;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2105;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1555;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2590;
      }
   }
}
