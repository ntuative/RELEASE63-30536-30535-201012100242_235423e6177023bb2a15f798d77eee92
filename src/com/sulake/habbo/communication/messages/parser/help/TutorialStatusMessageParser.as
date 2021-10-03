package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1264:Boolean;
      
      private var var_1013:Boolean;
      
      private var var_1265:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1264;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1013;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1265;
      }
      
      public function flush() : Boolean
      {
         this.var_1264 = false;
         this.var_1013 = false;
         this.var_1265 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1264 = param1.readBoolean();
         this.var_1013 = param1.readBoolean();
         this.var_1265 = param1.readBoolean();
         return true;
      }
   }
}
