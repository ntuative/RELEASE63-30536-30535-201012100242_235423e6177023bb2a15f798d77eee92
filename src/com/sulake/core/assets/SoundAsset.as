package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_159:Sound = null;
      
      private var var_1418:AssetTypeDeclaration;
      
      private var var_926:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1418 = param1;
         this.var_926 = param2;
      }
      
      public function get url() : String
      {
         return this.var_926;
      }
      
      public function get content() : Object
      {
         return this.var_159 as Object;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1418;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_159 = null;
            this.var_1418 = null;
            this.var_926 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(this.var_159)
            {
               this.var_159.close();
            }
            this.var_159 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_159)
            {
               this.var_159.close();
            }
            this.var_159 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_159)
            {
               this.var_159.close();
            }
            this.var_159 = SoundAsset(param1).var_159;
            return;
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_159 = SoundAsset(param1).var_159;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
