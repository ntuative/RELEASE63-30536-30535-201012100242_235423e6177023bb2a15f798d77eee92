package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_877:String = "avatar";
      
      private static const const_555:Number = -0.01;
      
      private static const const_556:Number = -0.409;
      
      private static const const_878:int = 2;
      
      private static const const_1213:Array = [0,0,0];
       
      
      private var var_599:AvatarVisualizationData = null;
      
      private var var_469:Map;
      
      private var var_1062:int = 0;
      
      private var var_765:Boolean;
      
      private var var_562:String;
      
      private var var_827:String;
      
      private var var_1061:int = 0;
      
      private var var_598:BitmapDataAsset;
      
      private var var_891:BitmapDataAsset;
      
      private var var_1695:int = -1;
      
      private var var_1761:int = -1;
      
      private var var_1760:int = -1;
      
      private const const_876:int = 0;
      
      private const const_1564:int = 1;
      
      private const const_1575:int = 2;
      
      private const const_1574:int = 3;
      
      private const const_1212:int = 4;
      
      private var var_1640:int = -1;
      
      private var var_245:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1759:Boolean = false;
      
      private var var_1762:Boolean = false;
      
      private var var_1758:Boolean = false;
      
      private var var_1358:Boolean = false;
      
      private var var_874:Boolean = false;
      
      private var var_1330:int = 0;
      
      private var var_1357:int = 0;
      
      private var var_1991:int = 0;
      
      private var var_1355:int = 0;
      
      private var var_721:int = 0;
      
      private var var_600:int = 0;
      
      private var var_1356:int = 0;
      
      private var var_1090:Boolean = false;
      
      private var var_1757:Boolean = false;
      
      private var var_1091:int = 0;
      
      private var var_722:int = 0;
      
      private var var_1763:Boolean = false;
      
      private var var_1089:int = 0;
      
      private var var_55:IAvatarImage = null;
      
      private var var_678:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_469 = new Map();
         this.var_765 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_469 != null)
         {
            this.resetImages();
            this.var_469.dispose();
            this.var_469 = null;
         }
         this.var_599 = null;
         this.var_598 = null;
         this.var_891 = null;
         super.dispose();
         this.var_678 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_678;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_599 = param1 as AvatarVisualizationData;
         createSprites(this.const_1212);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_214)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_225) > 0 && param3);
            if(_loc5_ != this.var_1759)
            {
               this.var_1759 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_205) > 0;
            if(_loc5_ != this.var_1762)
            {
               this.var_1762 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_397) > 0;
            if(_loc5_ != this.var_1758)
            {
               this.var_1758 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_641) > 0 && param3);
            if(_loc5_ != this.var_1358)
            {
               this.var_1358 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1090) > 0;
            if(_loc5_ != this.var_874)
            {
               this.var_874 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_305);
            if(_loc6_ != this.var_1330)
            {
               this.var_1330 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_538);
            if(_loc7_ != this.var_245)
            {
               this.var_245 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_813);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1043);
            if(_loc6_ != this.var_1357)
            {
               this.var_1357 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_435);
            if(_loc6_ != this.var_1355)
            {
               this.var_1355 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_477);
            if(_loc6_ != this.var_721)
            {
               this.var_721 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_375);
            if(_loc6_ != this.var_600)
            {
               this.var_600 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_339);
            if(_loc6_ != this.var_1695)
            {
               this.var_1695 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_721 > 0 && param1.getNumber(RoomObjectVariableEnum.const_375) > 0)
            {
               if(this.var_600 != this.var_721)
               {
                  this.var_600 = this.var_721;
                  _loc4_ = true;
               }
            }
            else if(this.var_600 != 0)
            {
               this.var_600 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_562);
            if(_loc6_ != this.var_1091)
            {
               this.var_1091 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1079);
            if(_loc7_ != this.var_827)
            {
               this.var_827 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_188);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_214 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_562 != param1)
         {
            this.var_562 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_469)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_469.reset();
         this.var_55 = null;
         _loc2_ = getSprite(this.const_876);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1358 = false;
         }
         if(this.var_245 == "sit" || this.var_245 == "lay")
         {
            this.var_1356 = param1 / 2;
         }
         else
         {
            this.var_1356 = 0;
         }
         this.var_1757 = false;
         this.var_1090 = false;
         if(this.var_245 == "lay")
         {
            this.var_1090 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1757 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_469.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_599.getAvatar(this.var_562,param1,this.var_827,this);
            if(_loc3_ != null)
            {
               this.var_469.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_406 != param1.getUpdateID() || this.var_1640 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1695;
            if(this.var_245 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1761 || param4)
            {
               _loc5_ = true;
               this.var_1761 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_55.setDirectionAngle(AvatarSetType.const_32,_loc6_);
            }
            if(_loc7_ != this.var_1760 || param4)
            {
               _loc5_ = true;
               this.var_1760 = _loc7_;
               if(this.var_1760 != this.var_1761)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_55.setDirectionAngle(AvatarSetType.const_42,_loc7_);
               }
            }
            var_406 = param1.getUpdateID();
            this.var_1640 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1564);
         this.var_598 = null;
         if(this.var_245 == "mv" || this.var_245 == "std")
         {
            _loc2_.visible = true;
            if(this.var_598 == null || param1 != var_252)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_598 = this.var_55.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_598 = this.var_55.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_598 != null)
               {
                  _loc2_.asset = this.var_598.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_598 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_891 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1575);
         if(this.var_874)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_891 = this.var_599.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_891 = this.var_599.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_245 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_245 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_891 != null)
            {
               _loc2_.asset = this.var_891.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1574);
         if(this.var_1091 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_599.getAvatarRendererAsset("number_" + this.var_1091 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_599.getAvatarRendererAsset("number_" + this.var_1091 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_245 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_245 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_722 = 1;
               this.var_1763 = true;
               this.var_1089 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_722 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1574);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1763)
         {
            ++this.var_1089;
            if(this.var_1089 < 10)
            {
               return false;
            }
            if(this.var_722 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1089 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_722 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_722 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_722 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_722 = 0;
               this.var_1763 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:* = null;
         var _loc29_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_599 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc10_ || _loc6_ != var_252 || this.var_55 == null)
         {
            if(_loc6_ != var_252)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc8_ || this.var_55 == null)
            {
               this.var_55 = this.getAvatarImage(_loc6_);
               if(this.var_55 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc13_ = getSprite(this.const_876);
               if(_loc13_ && this.var_55 && this.var_55.isPlaceholder())
               {
                  _loc13_.alpha = 150;
               }
               else if(_loc13_)
               {
                  _loc13_.alpha = 255;
               }
            }
            if(this.var_55 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_55);
            var_252 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc11_:Boolean = _loc9_ || _loc10_ || _loc8_;
         var _loc12_:Boolean = (this.var_765 || this.var_1061 > 0) && param3;
         if(_loc11_)
         {
            this.var_1061 = const_878;
         }
         if(_loc11_ || _loc12_)
         {
            increaseUpdateId();
            --this.var_1061;
            --this.var_1062;
            if(!(this.var_1062 <= 0 || _loc8_ || _loc10_ || _loc7_))
            {
               return;
            }
            this.var_55.updateAnimationByFrames(1);
            this.var_1062 = const_878;
            _loc15_ = this.var_55.getCanvasOffsets();
            if(_loc15_ == null || _loc15_.length < 3)
            {
               _loc15_ = const_1213;
            }
            _loc14_ = getSprite(this.const_876);
            if(_loc14_ != null)
            {
               _loc18_ = this.var_55.getImage(AvatarSetType.const_32,false);
               if(_loc18_ != null)
               {
                  _loc14_.asset = _loc18_;
               }
               if(_loc14_.asset)
               {
                  _loc14_.offsetX = -1 * _loc6_ / 2 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + _loc6_ / 4 + _loc15_[1] + this.var_1356;
               }
               if(this.var_1090)
               {
                  if(this.var_1757)
                  {
                     _loc14_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc14_.relativeDepth = const_556 + _loc15_[2];
                  }
               }
               else
               {
                  _loc14_.relativeDepth = const_555 + _loc15_[2];
               }
            }
            _loc14_ = getSprite(this.const_1575);
            if(_loc14_ != null && _loc14_.visible)
            {
               if(!this.var_1090)
               {
                  _loc14_.relativeDepth = const_555 - 0.01 + _loc15_[2];
               }
               else
               {
                  _loc14_.relativeDepth = const_556 - 0.01 + _loc15_[2];
               }
            }
            this.var_765 = this.var_55.isAnimating();
            _loc16_ = this.const_1212;
            for each(_loc17_ in this.var_55.getSprites())
            {
               if(_loc17_.id == const_877)
               {
                  _loc14_ = getSprite(this.const_876);
                  _loc19_ = this.var_55.getLayerData(_loc17_);
                  _loc20_ = _loc17_.getDirectionOffsetX(this.var_55.getDirection());
                  _loc21_ = _loc17_.getDirectionOffsetY(this.var_55.getDirection());
                  if(_loc19_ != null)
                  {
                     _loc20_ += _loc19_.dx;
                     _loc21_ += _loc19_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  _loc14_.offsetX += _loc20_;
                  _loc14_.offsetY += _loc21_;
               }
               else
               {
                  _loc14_ = getSprite(_loc16_);
                  if(_loc14_ != null)
                  {
                     _loc14_.capturesMouse = false;
                     _loc14_.visible = true;
                     _loc22_ = this.var_55.getLayerData(_loc17_);
                     _loc23_ = 0;
                     _loc24_ = _loc17_.getDirectionOffsetX(this.var_55.getDirection());
                     _loc25_ = _loc17_.getDirectionOffsetY(this.var_55.getDirection());
                     _loc26_ = _loc17_.getDirectionOffsetZ(this.var_55.getDirection());
                     _loc27_ = 0;
                     if(_loc17_.hasDirections)
                     {
                        _loc27_ = this.var_55.getDirection();
                     }
                     if(_loc22_ != null)
                     {
                        _loc23_ = _loc22_.animationFrame;
                        _loc24_ += _loc22_.dx;
                        _loc25_ += _loc22_.dy;
                        _loc27_ += _loc22_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc24_ /= 2;
                        _loc25_ /= 2;
                     }
                     if(_loc27_ < 0)
                     {
                        _loc27_ += 8;
                     }
                     else if(_loc27_ > 7)
                     {
                        _loc27_ -= 8;
                     }
                     _loc28_ = this.var_55.getScale() + "_" + _loc17_.member + "_" + _loc27_ + "_" + _loc23_;
                     _loc29_ = this.var_55.getAsset(_loc28_);
                     if(_loc29_ == null)
                     {
                        continue;
                     }
                     _loc14_.asset = _loc29_.content as BitmapData;
                     _loc14_.offsetX = -_loc29_.offset.x - _loc6_ / 2 + _loc24_;
                     _loc14_.offsetY = -_loc29_.offset.y + _loc25_ + this.var_1356;
                     if(this.var_1090)
                     {
                        _loc14_.relativeDepth = const_556 - 0.001 * spriteCount * _loc26_;
                     }
                     else
                     {
                        _loc14_.relativeDepth = const_555 - 0.001 * spriteCount * _loc26_;
                     }
                     if(_loc17_.ink == 33)
                     {
                        _loc14_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc14_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc16_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_328,this.var_245,this._postureParameter);
         if(this.var_1330 > 0)
         {
            param1.appendAction(AvatarAction.const_271,AvatarAction.const_1467[this.var_1330]);
         }
         if(this.var_1357 > 0)
         {
            param1.appendAction(AvatarAction.const_678,this.var_1357);
         }
         if(this.var_1991 > 0)
         {
            param1.appendAction(AvatarAction.const_651,this.var_1991);
         }
         if(this.var_721 > 0)
         {
            param1.appendAction(AvatarAction.const_681,this.var_721);
         }
         if(this.var_600 > 0)
         {
            param1.appendAction(AvatarAction.const_724,this.var_600);
         }
         if(this.var_1759)
         {
            param1.appendAction(AvatarAction.const_302);
         }
         if(this.var_1758 || this.var_1358)
         {
            param1.appendAction(AvatarAction.const_442);
         }
         if(this.var_1762)
         {
            param1.appendAction(AvatarAction.const_215);
         }
         if(this.var_1355 > 0)
         {
            param1.appendAction(AvatarAction.const_295,this.var_1355);
         }
         param1.endActionAppends();
         this.var_765 = param1.isAnimating();
         var _loc2_:int = this.const_1212;
         for each(_loc3_ in this.var_55.getSprites())
         {
            if(_loc3_.id != const_877)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
