package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1378:Array;
      
      private var var_2494:String;
      
      private var var_2492:String;
      
      private var var_2493:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1378 = param1;
         this.var_2494 = param2;
         this.var_2492 = param3;
         this.var_2493 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1378;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2494;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2492;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2493;
      }
   }
}
