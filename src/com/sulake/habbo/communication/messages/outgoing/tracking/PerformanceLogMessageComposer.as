package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1962:int = 0;
      
      private var var_1287:String = "";
      
      private var var_1622:String = "";
      
      private var var_1975:String = "";
      
      private var var_1974:String = "";
      
      private var var_1459:int = 0;
      
      private var var_1977:int = 0;
      
      private var var_1973:int = 0;
      
      private var var_1288:int = 0;
      
      private var var_1976:int = 0;
      
      private var var_1289:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1962 = param1;
         this.var_1287 = param2;
         this.var_1622 = param3;
         this.var_1975 = param4;
         this.var_1974 = param5;
         if(param6)
         {
            this.var_1459 = 1;
         }
         else
         {
            this.var_1459 = 0;
         }
         this.var_1977 = param7;
         this.var_1973 = param8;
         this.var_1288 = param9;
         this.var_1976 = param10;
         this.var_1289 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1962,this.var_1287,this.var_1622,this.var_1975,this.var_1974,this.var_1459,this.var_1977,this.var_1973,this.var_1288,this.var_1976,this.var_1289];
      }
   }
}
