package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class EnterOneWayDoorMessageComposer implements IMessageComposer
   {
       
      
      private var var_322:int;
      
      public function EnterOneWayDoorMessageComposer(param1:int)
      {
         super();
         this.var_322 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_322];
      }
   }
}
