package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2239:int;
      
      private var var_2238:int;
      
      private var var_1376:PetData;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1376 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2239 = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this.var_1376 = new PetData(param1);
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return this.var_2238;
      }
      
      public function get respect() : int
      {
         return this.var_2239;
      }
      
      public function get petData() : PetData
      {
         return this.var_1376;
      }
   }
}
