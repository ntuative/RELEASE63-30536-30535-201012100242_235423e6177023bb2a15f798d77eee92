package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1131:Boolean;
      
      private var var_2453:int;
      
      private var var_2456:String;
      
      private var var_314:int;
      
      private var var_2454:int;
      
      private var var_2199:String;
      
      private var var_2455:String;
      
      private var var_2457:String;
      
      private var var_760:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_760 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1131 = false;
            return;
         }
         this.var_1131 = true;
         this.var_2453 = int(_loc2_);
         this.var_2456 = param1.readString();
         this.var_314 = int(param1.readString());
         this.var_2454 = param1.readInteger();
         this.var_2199 = param1.readString();
         this.var_2455 = param1.readString();
         this.var_2457 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_760.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_760 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2453;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2456;
      }
      
      public function get flatId() : int
      {
         return this.var_314;
      }
      
      public function get eventType() : int
      {
         return this.var_2454;
      }
      
      public function get eventName() : String
      {
         return this.var_2199;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2455;
      }
      
      public function get creationTime() : String
      {
         return this.var_2457;
      }
      
      public function get tags() : Array
      {
         return this.var_760;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1131;
      }
   }
}
