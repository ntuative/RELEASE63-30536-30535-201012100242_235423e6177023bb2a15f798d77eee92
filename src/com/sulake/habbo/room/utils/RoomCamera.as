package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_882:int = 3;
       
      
      private var var_2475:int = -1;
      
      private var var_2474:int = -2;
      
      private var var_337:Vector3d = null;
      
      private var var_397:Vector3d = null;
      
      private var var_2480:Boolean = false;
      
      private var var_2477:Boolean = false;
      
      private var var_2483:Boolean = false;
      
      private var var_2479:Boolean = false;
      
      private var var_2476:int = 0;
      
      private var var_2481:int = 0;
      
      private var var_2482:int = 0;
      
      private var var_2478:int = 0;
      
      private var var_1370:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_397;
      }
      
      public function get targetId() : int
      {
         return this.var_2475;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2474;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2480;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2477;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2483;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2479;
      }
      
      public function get screenWd() : int
      {
         return this.var_2476;
      }
      
      public function get screenHt() : int
      {
         return this.var_2481;
      }
      
      public function get roomWd() : int
      {
         return this.var_2482;
      }
      
      public function get roomHt() : int
      {
         return this.var_2478;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2475 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2474 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2480 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2477 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2483 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2479 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2476 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2481 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2482 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2478 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_337 == null)
         {
            this.var_337 = new Vector3d();
         }
         if(this.var_337.x != param1.x || this.var_337.y != param1.y || this.var_337.z != param1.z)
         {
            this.var_337.assign(param1);
            this.var_1370 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_337 = null;
         this.var_397 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_397 != null)
         {
            return;
         }
         this.var_397 = new Vector3d();
         this.var_397.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_337 != null && this.var_397 != null)
         {
            ++this.var_1370;
            _loc4_ = Vector3d.dif(this.var_337,this.var_397);
            if(_loc4_.length <= param2)
            {
               this.var_397 = this.var_337;
               this.var_337 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_882 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1370 <= const_882)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_397 = Vector3d.sum(this.var_397,_loc4_);
            }
         }
      }
   }
}
