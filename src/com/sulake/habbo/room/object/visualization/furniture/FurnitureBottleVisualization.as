package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_875:int = 20;
      
      private static const const_560:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_286:Array;
      
      private var var_673:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_286 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_673)
            {
               this.var_673 = true;
               this.var_286 = new Array();
               this.var_286.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_673)
            {
               this.var_673 = false;
               this.var_286 = new Array();
               this.var_286.push(const_875);
               this.var_286.push(const_560 + param1);
               this.var_286.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
