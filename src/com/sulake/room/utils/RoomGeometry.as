package com.sulake.room.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   
   public class RoomGeometry implements IRoomGeometry
   {
      
      public static const const_733:Number = 64;
      
      public static const const_917:Number = 32;
       
      
      private var var_148:int = 0;
      
      private var _x:Vector3d;
      
      private var var_163:Vector3d;
      
      private var var_164:Vector3d;
      
      private var var_1127:Vector3d;
      
      private var _scale:Number = 1.0;
      
      private var var_402:Number = 1.0;
      
      private var var_403:Number = 1.0;
      
      private var var_401:Number = 1.0;
      
      private var var_1806:Number = 1.0;
      
      private var var_1805:Number = 1.0;
      
      private var var_1807:Number = 1.0;
      
      private var var_76:Vector3d;
      
      private var var_250:Vector3d;
      
      private var var_2648:Number = -500.0;
      
      private var var_2647:Number = 500.0;
      
      private var _width:Number;
      
      private var var_495:Map = null;
      
      public function RoomGeometry(param1:Number, param2:IVector3d, param3:IVector3d, param4:IVector3d = null)
      {
         super();
         this.scale = param1;
         this._x = new Vector3d();
         this.var_163 = new Vector3d();
         this.var_164 = new Vector3d();
         this.var_1127 = new Vector3d();
         this.var_1806 = 1;
         this.var_1805 = 1;
         this.x_scale = 1;
         this.y_scale = 1;
         this.var_1807 = Math.sqrt(0.5) / Math.sqrt(0.75);
         this.z_scale = 1;
         this.location = new Vector3d(param3.x,param3.y,param3.z);
         this.direction = new Vector3d(param2.x,param2.y,param2.z);
         if(param4 != null)
         {
            this.setDepthVector(param4);
         }
         else
         {
            this.setDepthVector(param2);
         }
         this.var_495 = new Map();
      }
      
      public static function getIntersectionVector(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:IVector3d) : IVector3d
      {
         var _loc5_:Number = Vector3d.dotProduct(param2,param4);
         if(Math.abs(_loc5_) < 0.00001)
         {
            return null;
         }
         var _loc6_:Vector3d = Vector3d.dif(param1,param3);
         var _loc7_:Number = -Vector3d.dotProduct(param4,_loc6_) / _loc5_;
         return Vector3d.sum(param1,Vector3d.product(param2,_loc7_));
      }
      
      public function get updateId() : int
      {
         return this.var_148;
      }
      
      public function get scale() : Number
      {
         return this._scale / Math.sqrt(0.5);
      }
      
      public function get directionAxis() : IVector3d
      {
         return new Vector3d(this.var_164.x,this.var_164.y,this.var_164.z);
      }
      
      public function get location() : IVector3d
      {
         return new Vector3d(this.var_76.x * this.var_402,this.var_76.y * this.var_403,this.var_76.z * this.var_401);
      }
      
      public function get direction() : IVector3d
      {
         return new Vector3d(this.var_250.x,this.var_250.y,this.var_250.z);
      }
      
      public function set x_scale(param1:Number) : void
      {
         if(this.var_402 != param1 * this.var_1806)
         {
            this.var_402 = param1 * this.var_1806;
            ++this.var_148;
         }
      }
      
      public function set y_scale(param1:Number) : void
      {
         if(this.var_403 != param1 * this.var_1805)
         {
            this.var_403 = param1 * this.var_1805;
            ++this.var_148;
         }
      }
      
      public function set z_scale(param1:Number) : void
      {
         if(this.var_401 != param1 * this.var_1807)
         {
            this.var_401 = param1 * this.var_1807;
            ++this.var_148;
         }
      }
      
      public function set scale(param1:Number) : void
      {
         if(param1 <= 1)
         {
            param1 = 1;
         }
         param1 *= Math.sqrt(0.5);
         if(param1 != this._scale)
         {
            this._scale = param1;
            ++this.var_148;
         }
      }
      
      public function set location(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_76 == null)
         {
            this.var_76 = new Vector3d();
         }
         var _loc2_:Number = this.var_76.x;
         var _loc3_:Number = this.var_76.y;
         var _loc4_:Number = this.var_76.z;
         this.var_76.assign(param1);
         this.var_76.x /= this.var_402;
         this.var_76.y /= this.var_403;
         this.var_76.z /= this.var_401;
         if(this.var_76.x != _loc2_ || this.var_76.y != _loc3_ || this.var_76.z != _loc4_)
         {
            ++this.var_148;
         }
      }
      
      public function set direction(param1:IVector3d) : void
      {
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = null;
         var _loc24_:* = null;
         var _loc25_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(this.var_250 == null)
         {
            this.var_250 = new Vector3d();
         }
         var _loc2_:Number = this.var_250.x;
         var _loc3_:Number = this.var_250.y;
         var _loc4_:Number = this.var_250.z;
         this.var_250.assign(param1);
         if(this.var_250.x != _loc2_ || this.var_250.y != _loc3_ || this.var_250.z != _loc4_)
         {
            ++this.var_148;
         }
         var _loc5_:Vector3d = new Vector3d(0,1,0);
         var _loc6_:Vector3d = new Vector3d(0,0,1);
         var _loc7_:Vector3d = new Vector3d(1,0,0);
         var _loc8_:Number = param1.x / 180 * 0;
         var _loc9_:Number = param1.y / 180 * 0;
         var _loc10_:Number = param1.z / 180 * 0;
         var _loc11_:Number = Math.cos(_loc8_);
         var _loc12_:Number = Math.sin(_loc8_);
         var _loc13_:Vector3d = Vector3d.sum(Vector3d.product(_loc5_,_loc11_),Vector3d.product(_loc7_,-_loc12_));
         var _loc14_:Vector3d = new Vector3d(_loc6_.x,_loc6_.y,_loc6_.z);
         var _loc15_:Vector3d = Vector3d.sum(Vector3d.product(_loc5_,_loc12_),Vector3d.product(_loc7_,_loc11_));
         var _loc16_:Number = Math.cos(_loc9_);
         var _loc17_:Number = Math.sin(_loc9_);
         var _loc18_:Vector3d = new Vector3d(_loc13_.x,_loc13_.y,_loc13_.z);
         var _loc19_:Vector3d = Vector3d.sum(Vector3d.product(_loc14_,_loc16_),Vector3d.product(_loc15_,_loc17_));
         var _loc20_:Vector3d = Vector3d.sum(Vector3d.product(_loc14_,-_loc17_),Vector3d.product(_loc15_,_loc16_));
         if(_loc10_ != 0)
         {
            _loc21_ = Math.cos(_loc10_);
            _loc22_ = Math.sin(_loc10_);
            _loc23_ = Vector3d.sum(Vector3d.product(_loc18_,_loc21_),Vector3d.product(_loc19_,_loc22_));
            _loc24_ = Vector3d.sum(Vector3d.product(_loc18_,-_loc22_),Vector3d.product(_loc19_,_loc21_));
            _loc25_ = new Vector3d(_loc20_.x,_loc20_.y,_loc20_.z);
            this._x.assign(_loc23_);
            this.var_163.assign(_loc24_);
            this.var_164.assign(_loc25_);
         }
         else
         {
            this._x.assign(_loc18_);
            this.var_163.assign(_loc19_);
            this.var_164.assign(_loc20_);
         }
      }
      
      public function dispose() : void
      {
         this._x = null;
         this.var_163 = null;
         this.var_164 = null;
         this.var_76 = null;
         this.var_250 = null;
         if(this.var_495 != null)
         {
            this.var_495.dispose();
            this.var_495 = null;
         }
      }
      
      public function setDisplacement(param1:IVector3d, param2:IVector3d) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(this.var_495 != null)
         {
            _loc3_ = int(Math.round(param1.x)) + "_" + int(Math.round(param1.y)) + "_" + int(Math.round(param1.z));
            this.var_495.remove(_loc3_);
            _loc4_ = new Vector3d();
            _loc4_.assign(param2);
            this.var_495.add(_loc3_,_loc4_);
            ++this.var_148;
         }
      }
      
      private function getDisplacenent(param1:IVector3d) : IVector3d
      {
         var _loc2_:* = null;
         if(this.var_495 != null)
         {
            _loc2_ = int(Math.round(param1.x)) + "_" + int(Math.round(param1.y)) + "_" + int(Math.round(param1.z));
            return this.var_495.getValue(_loc2_);
         }
         return null;
      }
      
      public function setDepthVector(param1:IVector3d) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc2_:Vector3d = new Vector3d(0,1,0);
         var _loc3_:Vector3d = new Vector3d(0,0,1);
         var _loc4_:Vector3d = new Vector3d(1,0,0);
         var _loc5_:Number = param1.x / 180 * 0;
         var _loc6_:Number = param1.y / 180 * 0;
         var _loc7_:Number = param1.z / 180 * 0;
         var _loc8_:Number = Math.cos(_loc5_);
         var _loc9_:Number = Math.sin(_loc5_);
         var _loc10_:Vector3d = Vector3d.sum(Vector3d.product(_loc2_,_loc8_),Vector3d.product(_loc4_,-_loc9_));
         var _loc11_:Vector3d = new Vector3d(_loc3_.x,_loc3_.y,_loc3_.z);
         var _loc12_:Vector3d = Vector3d.sum(Vector3d.product(_loc2_,_loc9_),Vector3d.product(_loc4_,_loc8_));
         var _loc13_:Number = Math.cos(_loc6_);
         var _loc14_:Number = Math.sin(_loc6_);
         var _loc15_:Vector3d = new Vector3d(_loc10_.x,_loc10_.y,_loc10_.z);
         var _loc16_:Vector3d = Vector3d.sum(Vector3d.product(_loc11_,_loc13_),Vector3d.product(_loc12_,_loc14_));
         var _loc17_:Vector3d = Vector3d.sum(Vector3d.product(_loc11_,-_loc14_),Vector3d.product(_loc12_,_loc13_));
         if(_loc7_ != 0)
         {
            _loc18_ = Math.cos(_loc7_);
            _loc19_ = Math.sin(_loc7_);
            _loc20_ = Vector3d.sum(Vector3d.product(_loc15_,_loc18_),Vector3d.product(_loc16_,_loc19_));
            _loc21_ = Vector3d.sum(Vector3d.product(_loc15_,-_loc19_),Vector3d.product(_loc16_,_loc18_));
            _loc22_ = new Vector3d(_loc17_.x,_loc17_.y,_loc17_.z);
            this.var_1127.assign(_loc22_);
         }
         else
         {
            this.var_1127.assign(_loc17_);
         }
         ++this.var_148;
      }
      
      public function adjustLocation(param1:IVector3d, param2:Number) : void
      {
         if(param1 == null || this.var_164 == null)
         {
            return;
         }
         var _loc3_:Vector3d = Vector3d.product(this.var_164,-param2);
         var _loc4_:Vector3d = new Vector3d(param1.x + _loc3_.x,param1.y + _loc3_.y,param1.z + _loc3_.z);
         this.location = _loc4_;
      }
      
      public function getCoordinatePosition(param1:IVector3d) : IVector3d
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Number = Vector3d.scalarProjection(param1,this._x);
         var _loc3_:Number = Vector3d.scalarProjection(param1,this.var_163);
         var _loc4_:Number = Vector3d.scalarProjection(param1,this.var_164);
         return new Vector3d(_loc2_,_loc3_,_loc4_);
      }
      
      public function getScreenPosition(param1:IVector3d) : IVector3d
      {
         var _loc2_:Vector3d = Vector3d.dif(param1,this.var_76);
         _loc2_.x *= this.var_402;
         _loc2_.y *= this.var_403;
         _loc2_.z *= this.var_401;
         var _loc3_:Number = Vector3d.scalarProjection(_loc2_,this.var_1127);
         if(_loc3_ < this.var_2648 || _loc3_ > this.var_2647)
         {
            return null;
         }
         var _loc4_:Number = Vector3d.scalarProjection(_loc2_,this._x);
         var _loc5_:Number = -Vector3d.scalarProjection(_loc2_,this.var_163);
         _loc4_ *= this._scale;
         _loc5_ *= this._scale;
         var _loc6_:IVector3d = this.getDisplacenent(param1);
         if(_loc6_ != null)
         {
            _loc2_ = Vector3d.dif(param1,this.var_76);
            _loc2_.add(_loc6_);
            _loc2_.x *= this.var_402;
            _loc2_.y *= this.var_403;
            _loc2_.z *= this.var_401;
            _loc3_ = Vector3d.scalarProjection(_loc2_,this.var_1127);
         }
         return new Vector3d(_loc4_,_loc5_,_loc3_);
      }
      
      public function getScreenPoint(param1:IVector3d) : Point
      {
         var _loc2_:IVector3d = this.getScreenPosition(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new Point(_loc2_.x,_loc2_.y);
      }
      
      public function getPlanePosition(param1:Point, param2:IVector3d, param3:IVector3d, param4:IVector3d) : Point
      {
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc5_:Number = param1.x / this._scale;
         var _loc6_:Number = -param1.y / this._scale;
         var _loc7_:IVector3d = Vector3d.sum(Vector3d.product(this._x,_loc5_),Vector3d.product(this.var_163,_loc6_));
         var _loc8_:Vector3d = new Vector3d(this.var_76.x * this.var_402,this.var_76.y * this.var_403,this.var_76.z * this.var_401);
         var _loc9_:IVector3d = Vector3d.sum(_loc8_,_loc7_);
         var _loc10_:IVector3d = this.var_164;
         var _loc11_:Vector3d = new Vector3d(param2.x * this.var_402,param2.y * this.var_403,param2.z * this.var_401);
         var _loc12_:Vector3d = new Vector3d(param3.x * this.var_402,param3.y * this.var_403,param3.z * this.var_401);
         var _loc13_:Vector3d = new Vector3d(param4.x * this.var_402,param4.y * this.var_403,param4.z * this.var_401);
         var _loc14_:IVector3d = Vector3d.crossProduct(_loc12_,_loc13_);
         var _loc15_:Vector3d = RoomGeometry.getIntersectionVector(_loc9_,_loc10_,_loc11_,_loc14_) as Vector3d;
         if(_loc15_ != null)
         {
            _loc15_.sub(_loc11_);
            _loc16_ = Vector3d.scalarProjection(_loc15_,param3) / _loc12_.length * param3.length;
            _loc17_ = Vector3d.scalarProjection(_loc15_,param4) / _loc13_.length * param4.length;
            return new Point(_loc16_,_loc17_);
         }
         return null;
      }
      
      public function performZoom() : void
      {
         if(this.isZoomedIn())
         {
            this.scale = const_917;
         }
         else
         {
            this.scale = const_733;
         }
      }
      
      public function isZoomedIn() : Boolean
      {
         return this.scale == const_733;
      }
      
      public function performZoomOut() : void
      {
         this.scale = const_917;
      }
   }
}
