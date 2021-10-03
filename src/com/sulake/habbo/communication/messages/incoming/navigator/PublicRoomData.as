package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2565:String;
      
      private var var_2386:int;
      
      private var var_2074:int;
      
      private var var_2496:String;
      
      private var var_2564:int;
      
      private var var_1813:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2565 = param1.readString();
         this.var_2386 = param1.readInteger();
         this.var_2074 = param1.readInteger();
         this.var_2496 = param1.readString();
         this.var_2564 = param1.readInteger();
         this.var_1813 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2565;
      }
      
      public function get unitPort() : int
      {
         return this.var_2386;
      }
      
      public function get worldId() : int
      {
         return this.var_2074;
      }
      
      public function get castLibs() : String
      {
         return this.var_2496;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2564;
      }
      
      public function get nodeId() : int
      {
         return this.var_1813;
      }
   }
}
