package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2270:int;
      
      private var var_1665:String;
      
      private var var_2285:String;
      
      private var var_2571:Boolean;
      
      private var var_2574:Boolean;
      
      private var var_2573:int;
      
      private var var_2284:String;
      
      private var var_2572:String;
      
      private var var_1633:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2270 = param1.readInteger();
         this.var_1665 = param1.readString();
         this.var_2285 = param1.readString();
         this.var_2571 = param1.readBoolean();
         this.var_2574 = param1.readBoolean();
         param1.readString();
         this.var_2573 = param1.readInteger();
         this.var_2284 = param1.readString();
         this.var_2572 = param1.readString();
         this.var_1633 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2270;
      }
      
      public function get avatarName() : String
      {
         return this.var_1665;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2285;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2571;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2574;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2573;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2284;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2572;
      }
      
      public function get realName() : String
      {
         return this.var_1633;
      }
   }
}
