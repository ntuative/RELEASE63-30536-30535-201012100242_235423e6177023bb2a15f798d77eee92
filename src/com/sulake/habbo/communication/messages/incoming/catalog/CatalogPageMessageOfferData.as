package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1438:String;
      
      private var var_945:int;
      
      private var var_947:int;
      
      private var var_1439:int;
      
      private var var_933:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1438 = param1.readString();
         this.var_945 = param1.readInteger();
         this.var_947 = param1.readInteger();
         this.var_1439 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_933 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_933.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1438;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_945;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_947;
      }
      
      public function get products() : Array
      {
         return this.var_933;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1439;
      }
   }
}
