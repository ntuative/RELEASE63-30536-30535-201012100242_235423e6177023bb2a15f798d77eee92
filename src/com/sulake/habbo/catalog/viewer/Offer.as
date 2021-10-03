package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1378:String = "pricing_model_unknown";
      
      public static const const_451:String = "pricing_model_single";
      
      public static const const_495:String = "pricing_model_multi";
      
      public static const const_532:String = "pricing_model_bundle";
      
      public static const const_1010:String = "price_type_none";
      
      public static const const_460:String = "price_type_credits";
      
      public static const const_768:String = "price_type_activitypoints";
      
      public static const const_790:String = "price_type_credits_and_activitypoints";
       
      
      private var var_627:String;
      
      private var var_946:String;
      
      private var _offerId:int;
      
      private var var_1438:String;
      
      private var var_945:int;
      
      private var var_947:int;
      
      private var var_1439:int;
      
      private var var_350:ICatalogPage;
      
      private var var_626:IProductContainer;
      
      private var var_1917:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1438 = param1.localizationId;
         this.var_945 = param1.priceInCredits;
         this.var_947 = param1.priceInActivityPoints;
         this.var_1439 = param1.activityPointType;
         this.var_350 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_350;
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
      
      public function get activityPointType() : int
      {
         return this.var_1439;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_626;
      }
      
      public function get pricingModel() : String
      {
         return this.var_627;
      }
      
      public function get priceType() : String
      {
         return this.var_946;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_1917;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1438 = "";
         this.var_945 = 0;
         this.var_947 = 0;
         this.var_1439 = 0;
         this.var_350 = null;
         if(this.var_626 != null)
         {
            this.var_626.dispose();
            this.var_626 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_627)
         {
            case const_451:
               this.var_626 = new SingleProductContainer(this,param1);
               break;
            case const_495:
               this.var_626 = new MultiProductContainer(this,param1);
               break;
            case const_532:
               this.var_626 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_627);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_627 = const_451;
            }
            else
            {
               this.var_627 = const_495;
            }
         }
         else if(param1.length > 1)
         {
            this.var_627 = const_532;
         }
         else
         {
            this.var_627 = const_1378;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_945 > 0 && this.var_947 > 0)
         {
            this.var_946 = const_790;
         }
         else if(this.var_945 > 0)
         {
            this.var_946 = const_460;
         }
         else if(this.var_947 > 0)
         {
            this.var_946 = const_768;
         }
         else
         {
            this.var_946 = const_1010;
         }
      }
   }
}
