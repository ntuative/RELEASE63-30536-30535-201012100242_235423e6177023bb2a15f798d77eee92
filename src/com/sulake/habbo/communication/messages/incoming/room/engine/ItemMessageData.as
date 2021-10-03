package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2296:Boolean = false;
      
      private var var_2297:int = 0;
      
      private var var_2298:int = 0;
      
      private var var_2048:int = 0;
      
      private var var_2052:int = 0;
      
      private var var_163:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_250:String = "";
      
      private var _type:int = 0;
      
      private var var_2678:String = "";
      
      private var var_1314:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_161:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2296 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_161 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2296;
      }
      
      public function get wallX() : Number
      {
         return this.var_2297;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_161)
         {
            this.var_2297 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2298;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_161)
         {
            this.var_2298 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2048;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_161)
         {
            this.var_2048 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2052;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_161)
         {
            this.var_2052 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_163;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_161)
         {
            this.var_163 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_164;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_161)
         {
            this.var_164 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_250;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_161)
         {
            this.var_250 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_161)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_161)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_161)
         {
            this._data = param1;
         }
      }
   }
}
