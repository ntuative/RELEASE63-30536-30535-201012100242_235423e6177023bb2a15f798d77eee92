package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2363:Number = 0.0;
      
      private var var_2361:Number = 0.0;
      
      private var var_2360:Number = 0.0;
      
      private var var_2362:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2363 = param1;
         this.var_2361 = param2;
         this.var_2360 = param3;
         this.var_2362 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2363;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2361;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2360;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2362;
      }
   }
}
