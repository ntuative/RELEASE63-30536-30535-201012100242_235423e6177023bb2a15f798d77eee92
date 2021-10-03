package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_805:RoomObjectLocationCacheItem = null;
      
      private var var_176:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_805 = new RoomObjectLocationCacheItem(param1);
         this.var_176 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_805;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_176;
      }
      
      public function dispose() : void
      {
         if(this.var_805 != null)
         {
            this.var_805.dispose();
            this.var_805 = null;
         }
         if(this.var_176 != null)
         {
            this.var_176.dispose();
            this.var_176 = null;
         }
      }
   }
}
