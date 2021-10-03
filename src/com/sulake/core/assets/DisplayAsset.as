package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_926:String;
      
      protected var var_159:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_753:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_753 = param1;
         this.var_926 = param2;
      }
      
      public function get url() : String
      {
         return this.var_926;
      }
      
      public function get content() : Object
      {
         return this.var_159;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_753;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_159.loaderInfo != null)
            {
               if(this.var_159.loaderInfo.loader != null)
               {
                  this.var_159.loaderInfo.loader.unload();
               }
            }
            this.var_159 = null;
            this.var_753 = null;
            this._disposed = true;
            this.var_926 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_159 = param1 as DisplayObject;
            if(this.var_159 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_159 = DisplayAsset(param1).var_159;
            this.var_753 = DisplayAsset(param1).var_753;
            if(this.var_159 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_159 = DisplayAsset(param1).var_159;
            this.var_753 = DisplayAsset(param1).var_753;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
