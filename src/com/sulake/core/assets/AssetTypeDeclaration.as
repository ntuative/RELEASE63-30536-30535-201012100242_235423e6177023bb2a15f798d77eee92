package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2584:String;
      
      private var var_2585:Class;
      
      private var var_2586:Class;
      
      private var var_1830:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2584 = param1;
         this.var_2585 = param2;
         this.var_2586 = param3;
         if(rest == null)
         {
            this.var_1830 = new Array();
         }
         else
         {
            this.var_1830 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2584;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2585;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2586;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1830;
      }
   }
}
