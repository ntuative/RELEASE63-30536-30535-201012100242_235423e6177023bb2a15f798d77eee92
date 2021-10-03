package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_78:String = "i";
      
      public static const const_85:String = "s";
      
      public static const const_230:String = "e";
       
      
      private var var_1429:String;
      
      private var var_2276:int;
      
      private var var_1179:String;
      
      private var var_1180:int;
      
      private var var_1428:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1429 = param1.readString();
         this.var_2276 = param1.readInteger();
         this.var_1179 = param1.readString();
         this.var_1180 = param1.readInteger();
         this.var_1428 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1429;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2276;
      }
      
      public function get extraParam() : String
      {
         return this.var_1179;
      }
      
      public function get productCount() : int
      {
         return this.var_1180;
      }
      
      public function get expiration() : int
      {
         return this.var_1428;
      }
   }
}
