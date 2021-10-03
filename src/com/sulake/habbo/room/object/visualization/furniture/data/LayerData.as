package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_572:String = "";
      
      public static const const_510:int = 0;
      
      public static const const_499:int = 255;
      
      public static const const_653:Boolean = false;
      
      public static const const_476:int = 0;
      
      public static const const_430:int = 0;
      
      public static const const_456:int = 0;
      
      public static const const_1086:int = 1;
      
      public static const const_1097:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2115:String = "";
      
      private var var_1453:int = 0;
      
      private var var_2058:int = 255;
      
      private var var_2533:Boolean = false;
      
      private var var_2534:int = 0;
      
      private var var_2535:int = 0;
      
      private var var_2536:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2115 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2115;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1453 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1453;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2058 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2058;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2533 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2533;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2534 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2534;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2535 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2535;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2536 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2536;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
