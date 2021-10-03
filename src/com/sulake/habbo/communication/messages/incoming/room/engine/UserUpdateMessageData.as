package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_163:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_2486:Number = 0;
      
      private var var_2487:Number = 0;
      
      private var var_2489:Number = 0;
      
      private var var_2490:Number = 0;
      
      private var var_250:int = 0;
      
      private var var_2422:int = 0;
      
      private var var_287:Array;
      
      private var var_2488:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_287 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_163 = param3;
         this.var_164 = param4;
         this.var_2486 = param5;
         this.var_250 = param6;
         this.var_2422 = param7;
         this.var_2487 = param8;
         this.var_2489 = param9;
         this.var_2490 = param10;
         this.var_2488 = param11;
         this.var_287 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_163;
      }
      
      public function get z() : Number
      {
         return this.var_164;
      }
      
      public function get localZ() : Number
      {
         return this.var_2486;
      }
      
      public function get targetX() : Number
      {
         return this.var_2487;
      }
      
      public function get targetY() : Number
      {
         return this.var_2489;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2490;
      }
      
      public function get dir() : int
      {
         return this.var_250;
      }
      
      public function get dirHead() : int
      {
         return this.var_2422;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2488;
      }
      
      public function get actions() : Array
      {
         return this.var_287.slice();
      }
   }
}
