package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1188:int = 2;
      
      private static const const_1189:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_286:Array;
      
      private var var_1002:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_286 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1188)
         {
            this.var_286 = new Array();
            this.var_286.push(const_1189);
            this.var_1002 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1002 > 0)
         {
            --this.var_1002;
         }
         if(this.var_1002 == 0)
         {
            if(this.var_286.length > 0)
            {
               super.setAnimation(this.var_286.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
