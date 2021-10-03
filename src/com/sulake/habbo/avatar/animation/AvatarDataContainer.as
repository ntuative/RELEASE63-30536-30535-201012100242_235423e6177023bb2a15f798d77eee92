package com.sulake.habbo.avatar.animation
{
   import com.sulake.core.utils.Map;
   import flash.geom.ColorTransform;
   
   public class AvatarDataContainer implements IAvatarDataContainer
   {
       
      
      private var var_1453:int;
      
      private var var_1947:uint;
      
      private var var_1949:uint;
      
      private var var_1420:ColorTransform;
      
      private var _rgb:uint;
      
      private var var_1542:uint;
      
      private var var_1541:uint;
      
      private var _b:uint;
      
      private var var_1727:Number = 1.0;
      
      private var var_1726:Number = 1.0;
      
      private var var_1728:Number = 1.0;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var var_957:Map;
      
      private var var_1948:Boolean = true;
      
      public function AvatarDataContainer(param1:XML)
      {
         super();
         this.var_1453 = parseInt(param1.@ink);
         var _loc2_:String = String(param1.@foreground);
         _loc2_ = _loc2_.replace("#","");
         var _loc3_:String = String(param1.@background);
         _loc3_ = _loc3_.replace("#","");
         this.var_1947 = parseInt(_loc2_,16);
         this.var_1949 = parseInt(_loc3_,16);
         this._rgb = parseInt(_loc2_,16);
         this.var_1542 = this._rgb >> 16 & 255;
         this.var_1541 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1727 = this.var_1542 / 255 * 1;
         this.var_1726 = this.var_1541 / 255 * 1;
         this.var_1728 = this._b / 255 * 1;
         if(this.var_1453 == 37)
         {
            this._alphaMultiplier = 0.5;
            this.var_1948 = false;
         }
         this.var_1420 = new ColorTransform(this.var_1727,this.var_1726,this.var_1728,this._alphaMultiplier);
         this.var_957 = this.generatePaletteMapForGrayscale(this.var_1949,this.var_1947);
      }
      
      public function get ink() : int
      {
         return this.var_1453;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_1420;
      }
      
      public function get reds() : Array
      {
         return this.var_957.getValue("reds") as Array;
      }
      
      public function get greens() : Array
      {
         return this.var_957.getValue("greens") as Array;
      }
      
      public function get blues() : Array
      {
         return this.var_957.getValue("blues") as Array;
      }
      
      public function get alphas() : Array
      {
         return this.var_957.getValue("alphas") as Array;
      }
      
      public function get paletteIsGrayscale() : Boolean
      {
         return this.var_1948;
      }
      
      private function generatePaletteMapForGrayscale(param1:uint, param2:uint) : Map
      {
         var _loc3_:* = param1 >> 24 & 255;
         var _loc4_:* = param1 >> 16 & 255;
         var _loc5_:* = param1 >> 8 & 255;
         var _loc6_:* = param1 >> 0 & 255;
         var _loc7_:* = param2 >> 24 & 255;
         var _loc8_:* = param2 >> 16 & 255;
         var _loc9_:* = param2 >> 8 & 255;
         var _loc10_:* = param2 >> 0 & 255;
         var _loc11_:Number = (_loc7_ - _loc3_) / 255;
         var _loc12_:Number = (_loc8_ - _loc4_) / 255;
         var _loc13_:Number = (_loc9_ - _loc5_) / 255;
         var _loc14_:Number = (_loc10_ - _loc6_) / 255;
         var _loc15_:Map = new Map();
         var _loc16_:* = [];
         var _loc17_:* = [];
         var _loc18_:* = [];
         var _loc19_:* = [];
         var _loc20_:* = Number(_loc3_);
         var _loc21_:Number = _loc4_;
         var _loc22_:Number = _loc5_;
         var _loc23_:Number = _loc6_;
         var _loc24_:int = 0;
         while(_loc24_ < 256)
         {
            if(_loc21_ == _loc4_ && _loc22_ == _loc5_ && _loc23_ == _loc6_)
            {
               _loc20_ = 0;
            }
            _loc20_ += _loc11_;
            _loc21_ += _loc12_;
            _loc22_ += _loc13_;
            _loc23_ += _loc14_;
            _loc19_.push(_loc20_ << 24);
            _loc16_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc17_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc18_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc24_++;
         }
         _loc15_.add("alphas",_loc16_);
         _loc15_.add("reds",_loc16_);
         _loc15_.add("greens",_loc17_);
         _loc15_.add("blues",_loc18_);
         return _loc15_;
      }
   }
}
