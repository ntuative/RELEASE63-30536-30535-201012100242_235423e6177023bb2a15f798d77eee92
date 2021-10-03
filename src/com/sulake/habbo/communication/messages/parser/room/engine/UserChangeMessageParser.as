package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_562:String;
      
      private var var_769:String;
      
      private var var_1431:String;
      
      private var var_1901:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get sex() : String
      {
         return this.var_769;
      }
      
      public function get customInfo() : String
      {
         return this.var_1431;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1901;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_562 = "";
         this.var_769 = "";
         this.var_1431 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_562 = param1.readString();
         this.var_769 = param1.readString();
         this.var_1431 = param1.readString();
         this.var_1901 = param1.readInteger();
         if(this.var_769)
         {
            this.var_769 = this.var_769.toUpperCase();
         }
         return true;
      }
   }
}
