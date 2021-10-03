package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_562:String;
      
      private var var_769:String;
      
      private var var_2293:String;
      
      private var var_1633:String;
      
      private var var_2291:int;
      
      private var var_2292:String;
      
      private var var_2289:int;
      
      private var var_2290:int;
      
      private var var_1890:int;
      
      private var _respectLeft:int;
      
      private var var_646:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_562 = param1.readString();
         this.var_769 = param1.readString();
         this.var_2293 = param1.readString();
         this.var_1633 = param1.readString();
         this.var_2291 = param1.readInteger();
         this.var_2292 = param1.readString();
         this.var_2289 = param1.readInteger();
         this.var_2290 = param1.readInteger();
         this.var_1890 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_646 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get sex() : String
      {
         return this.var_769;
      }
      
      public function get customData() : String
      {
         return this.var_2293;
      }
      
      public function get realName() : String
      {
         return this.var_1633;
      }
      
      public function get tickets() : int
      {
         return this.var_2291;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2292;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2289;
      }
      
      public function get directMail() : int
      {
         return this.var_2290;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1890;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_646;
      }
   }
}
