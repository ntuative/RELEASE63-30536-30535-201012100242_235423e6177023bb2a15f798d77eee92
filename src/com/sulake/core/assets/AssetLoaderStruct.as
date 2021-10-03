package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_897:IAssetLoader;
      
      private var var_1566:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1566 = param1;
         this.var_897 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1566;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_897;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_897 != null)
            {
               if(!this.var_897.disposed)
               {
                  this.var_897.dispose();
                  this.var_897 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
