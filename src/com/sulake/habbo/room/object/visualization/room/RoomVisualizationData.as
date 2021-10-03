package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_427:WallRasterizer;
      
      private var var_426:FloorRasterizer;
      
      private var var_645:WallAdRasterizer;
      
      private var var_425:LandscapeRasterizer;
      
      private var var_644:PlaneMaskManager;
      
      private var var_639:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_427 = new WallRasterizer();
         this.var_426 = new FloorRasterizer();
         this.var_645 = new WallAdRasterizer();
         this.var_425 = new LandscapeRasterizer();
         this.var_644 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_639;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_426;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_427;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_645;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_425;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_644;
      }
      
      public function dispose() : void
      {
         if(this.var_427 != null)
         {
            this.var_427.dispose();
            this.var_427 = null;
         }
         if(this.var_426 != null)
         {
            this.var_426.dispose();
            this.var_426 = null;
         }
         if(this.var_645 != null)
         {
            this.var_645.dispose();
            this.var_645 = null;
         }
         if(this.var_425 != null)
         {
            this.var_425.dispose();
            this.var_425 = null;
         }
         if(this.var_644 != null)
         {
            this.var_644.dispose();
            this.var_644 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_427 != null)
         {
            this.var_427.clearCache();
         }
         if(this.var_426 != null)
         {
            this.var_426.clearCache();
         }
         if(this.var_425 != null)
         {
            this.var_425.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_427.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_426.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_645.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_425.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_644.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_639)
         {
            return;
         }
         this.var_427.initializeAssetCollection(param1);
         this.var_426.initializeAssetCollection(param1);
         this.var_645.initializeAssetCollection(param1);
         this.var_425.initializeAssetCollection(param1);
         this.var_644.initializeAssetCollection(param1);
         this.var_639 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
