package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2063:int;
      
      private var var_2062:int;
      
      private var var_2064:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2063 = param1;
         this.var_2062 = param2;
         this.var_2064 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2063,this.var_2062,this.var_2064];
      }
      
      public function dispose() : void
      {
      }
   }
}
