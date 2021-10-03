package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_663:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_678)
         {
            _structure = null;
            _assets = null;
            var_242 = null;
            var_254 = null;
            var_562 = null;
            var_501 = null;
            var_287 = null;
            if(!var_1154 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_683 = null;
            var_678 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_663[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_663[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_328:
               switch(_loc3_)
               {
                  case AvatarAction.const_737:
                  case AvatarAction.const_419:
                  case AvatarAction.const_341:
                  case AvatarAction.const_802:
                  case AvatarAction.const_316:
                  case AvatarAction.const_791:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_295:
            case AvatarAction.const_678:
            case AvatarAction.const_215:
            case AvatarAction.const_651:
            case AvatarAction.const_681:
            case AvatarAction.const_724:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
