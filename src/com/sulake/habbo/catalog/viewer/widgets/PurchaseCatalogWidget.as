package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1932:XML;
      
      private var var_1931:XML;
      
      private var var_1930:XML;
      
      private var var_774:IWindowContainer;
      
      private var var_521:IButtonWindow;
      
      private var var_2663:IButtonWindow;
      
      private var var_1446:ITextWindow;
      
      private var var_1447:ITextWindow;
      
      private var var_1448:ITextWindow;
      
      private var var_2616:ITextWindow;
      
      private var var_80:Offer;
      
      private var var_1929:String = "";
      
      private var var_1192:Function;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_1932 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_1931 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_1930 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_928,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1192 = param1.callback;
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_460:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_1932) as IWindowContainer;
               break;
            case Offer.const_768:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_1931) as IWindowContainer;
               break;
            case Offer.const_790:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_1930) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach..." + this.var_80.priceType);
         }
         if(_loc2_ != null)
         {
            if(this.var_774 != null)
            {
               _window.removeChild(this.var_774);
               this.var_774.dispose();
            }
            this.var_774 = _loc2_;
            _window.addChild(_loc2_);
            this.var_774.x = 0;
            this.var_774.y = 0;
         }
         this.var_1446 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_1447 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_1448 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_2616 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_521 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(this.var_521 != null)
         {
            if(this.var_1192 != null)
            {
               this.var_521.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1192);
            }
            else
            {
               this.var_521.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1192);
               this.var_521.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_521.disable();
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_80 = param1.offer;
         this.attachStub(this.var_80.priceType);
         if(this.var_1446 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_80.priceInCredits));
            this.var_1446.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_80.activityPointType == Purse.const_439 ? "pixels" : "activitypoints";
         if(this.var_1447 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_80.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_80.priceInActivityPoints.toString());
            this.var_1447.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_1448 != null)
         {
            _loc4_ = "catalog.purchase.price.credits+activitypoints." + this.var_80.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_80.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_80.priceInActivityPoints));
            this.var_1448.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_80.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_521 != null)
         {
            this.var_521.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_1929 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_80 != null)
         {
            Logger.log("Init Purchase: " + this.var_80.offerId + " " + this.var_80.localizationId);
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_80,page.pageId,this.var_1929);
         }
      }
   }
}
