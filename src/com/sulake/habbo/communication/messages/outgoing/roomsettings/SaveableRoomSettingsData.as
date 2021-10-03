package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1502:String;
      
      private var var_1908:int;
      
      private var _password:String;
      
      private var var_1363:int;
      
      private var var_1909:int;
      
      private var var_760:Array;
      
      private var var_1903:Array;
      
      private var var_1907:Boolean;
      
      private var var_1904:Boolean;
      
      private var var_1906:Boolean;
      
      private var var_1910:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get method_1() : Boolean
      {
         return this.var_1907;
      }
      
      public function set method_1(param1:Boolean) : void
      {
         this.var_1907 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_1904;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_1904 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_1906;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_1906 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_1910;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_1910 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1502;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1502 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1908;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1908 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1363;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1363 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_1909;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_1909 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_760;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_760 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_1903;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_1903 = param1;
      }
   }
}