package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2128:int;
      
      private var var_2126:int;
      
      private var var_696:Boolean;
      
      private var var_2124:int;
      
      private var var_2127:int;
      
      private var var_2125:int;
      
      private var var_2129:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2128 = param1.readInteger();
         this.var_2126 = param1.readInteger();
         this.var_696 = param1.readBoolean();
         this.var_2124 = param1.readInteger();
         this.var_2127 = param1.readInteger();
         this.var_2125 = param1.readInteger();
         this.var_2129 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2128;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2126;
      }
      
      public function get online() : Boolean
      {
         return this.var_696;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2124;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2127;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2125;
      }
      
      public function get banCount() : int
      {
         return this.var_2129;
      }
   }
}
