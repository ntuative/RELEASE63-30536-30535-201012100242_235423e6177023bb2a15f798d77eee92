package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.quest.enum.QuestStatusEnum;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import flash.events.Event;
   
   public class QuestCampaign implements IDisposable
   {
       
      
      private var _controller:QuestController;
      
      private var _id:String;
      
      private var var_1439:int;
      
      private var var_338:Array;
      
      private var var_489:Quest;
      
      private var var_283:QuestView;
      
      private var _window:IFrameWindow;
      
      private var var_1110:IWindowContainer;
      
      private var var_1373:IWindowContainer;
      
      private var var_284:IItemListWindow;
      
      private var var_730:Array;
      
      private var var_678:Boolean = false;
      
      private var var_1109:IWindowContainer;
      
      private var var_171:QuestHelp;
      
      public function QuestCampaign(param1:QuestController, param2:String, param3:int)
      {
         this.var_338 = [];
         this.var_730 = [];
         super();
         this._controller = param1;
         this._id = param2;
         this.var_1439 = param3;
         this.var_171 = new QuestHelp(this);
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.reset();
         if(this.var_283)
         {
            this.var_283.dispose();
            this.var_283 = null;
         }
         for each(_loc1_ in this.var_730)
         {
            _loc1_.dispose();
         }
         this.var_730 = [];
         this._window.dispose();
         this._window = null;
         this.var_678 = true;
         if(this.var_171)
         {
            this.var_171.dispose();
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_678;
      }
      
      public function isVisible() : Boolean
      {
         return this._window != null && this._window.visible;
      }
      
      public function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      private function reset() : void
      {
         var _loc1_:* = null;
         if(this.var_338)
         {
            for each(_loc1_ in this.var_338)
            {
               this.var_284.removeListItem(_loc1_.view);
               _loc1_.dispose();
            }
            this.var_338 = null;
            this.var_284.destroyListItems();
            this.var_284.removeListItems();
         }
         this.var_489 = null;
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            this._window.visible = true;
            return;
         }
         this._window = IFrameWindow(this._controller.questEngine.getXmlWindow("QuestEngine"));
         this._window.findChildByTag("close").procedure = this.onWindowClose;
         this._window.center();
         this.var_1110 = this._window.findChildByName("quest.container") as IWindowContainer;
         this.var_1373 = this._window.findChildByName("currency.container") as IWindowContainer;
         this.var_284 = this._window.findChildByName("quests") as IItemListWindow;
         var _loc1_:* = "icon_" + this.id + "_pixeltype";
         var _loc2_:IBitmapWrapperWindow = this.var_1373.findChildByName("currency.icon") as IBitmapWrapperWindow;
         this._controller.questEngine.setImageFromAsset(_loc2_,_loc1_,this.onPreviewImageReady);
         this.var_1373.findChildByName("currency.amount").caption = "${quest_" + this.id + ".currency}";
         var _loc3_:String = "quest_" + this.id;
         var _loc4_:* = _loc3_ + ".title";
         this._window.caption = "${" + _loc4_ + "}";
         var _loc5_:* = _loc3_ + ".currency";
         this.setText("currency.amount",_loc5_);
         this.var_1109 = this._window.findChildByName("help.button") as IWindowContainer;
         if(this.var_1109)
         {
            this.var_1109.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.helpButtonEventProc);
            this.var_1109.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.helpButtonEventProc);
            this.var_1109.addEventListener(WindowMouseEvent.const_25,this.helpButtonEventProc);
         }
      }
      
      private function helpButtonEventProc(param1:Event, param2:IWindow = null) : void
      {
         if(param2 == null)
         {
            param2 = param1.target as IWindow;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.openHelp();
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            param2.style = 0;
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            param2.style = 2;
         }
      }
      
      private function openHelp() : void
      {
         Logger.log("Open Questing Help System");
         this.var_1110.removeChildAt(0);
         if(this.var_283)
         {
            this.var_283.dispose();
            this.var_283 = null;
         }
         if(this.var_489)
         {
            this.var_489.selected = false;
         }
         if(this.var_171)
         {
            this.var_1110.addChild(this.var_171.view);
         }
      }
      
      public function updatePurse() : void
      {
         var _loc1_:int = this._controller.questEngine.getActivityPointsForType(this.var_1439);
         this._controller.questEngine.localization.registerParameter("quest_" + this.id + ".currency","amount",_loc1_.toString());
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_678)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(!this._window)
         {
            return;
         }
         if(_loc2_ != null)
         {
            _loc3_ = this.var_1373.findChildByName("currency.icon") as IBitmapWrapperWindow;
            this._controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onPreviewImageReady);
         }
      }
      
      public function get controller() : QuestController
      {
         return this._controller;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      public function openCampaign(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         this.prepareWindow();
         this.reset();
         this.updatePurse();
         param1.sort(this.orderByName,Array.NUMERIC);
         this.var_338 = [];
         for each(_loc2_ in param1)
         {
            this.var_338.push(new Quest(_loc2_,this));
         }
         _loc3_ = null;
         for each(_loc4_ in this.var_338)
         {
            this.var_284.addListItem(_loc4_.view);
            if(!_loc3_ && (_loc4_.status == QuestStatusEnum.const_40 || _loc4_.status == QuestStatusEnum.const_484))
            {
               _loc3_ = _loc4_;
            }
         }
         if(_loc3_)
         {
            this.activateListItem(_loc3_);
            if(this.var_284.maxScrollV > 0)
            {
               this.var_284.scrollV = _loc3_.view.y / this.var_284.maxScrollV;
            }
         }
         else if(this.var_338.length > 0)
         {
            this.activateListItem(this.var_338[0]);
         }
      }
      
      private function orderByName(param1:QuestMessageData, param2:QuestMessageData) : Number
      {
         var _loc3_:String = param1.localizationPrefix;
         var _loc4_:String = param2.localizationPrefix;
         var _loc5_:uint = param1.sortCode;
         var _loc6_:uint = param2.sortCode;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         return 0;
      }
      
      private function orderByDate(param1:QuestMessageData, param2:QuestMessageData) : Number
      {
         var _loc3_:String = param1.endDateTimeStamp;
         var _loc4_:String = param2.endDateTimeStamp;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function updateListView() : void
      {
         var _loc1_:IItemListWindow = this._window.findChildByName("quests") as IItemListWindow;
         _loc1_.invalidate();
      }
      
      public function activateListItem(param1:Quest) : void
      {
         if(this.var_489 != null)
         {
            this.var_489.selected = false;
         }
         this.var_489 = param1;
         this.var_489.selected = true;
         this.showQuestData(this.var_489);
      }
      
      private function showQuestData(param1:Quest) : void
      {
         this.var_1110.removeChildAt(0);
         if(this.var_283)
         {
            this.var_283.dispose();
            this.var_283 = null;
         }
         this.var_283 = new QuestView(this,param1);
         this.var_1110.addChild(this.var_283.view);
         this.var_283.init();
      }
      
      public function questAccepted(param1:QuestMessageData) : void
      {
         this.modifyQuestData(param1);
      }
      
      public function questCompleted(param1:QuestMessageData) : void
      {
         this.modifyQuestData(param1);
         this.var_730.push(new QuestCompleted(this,param1));
      }
      
      public function closeQuestCompleted(param1:QuestCompleted) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         for each(_loc3_ in this.var_730)
         {
            if(_loc3_ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_)
         {
            _loc2_.dispose();
            _loc4_ = this.var_730.indexOf(_loc2_);
            if(_loc4_ >= 0)
            {
               this.var_730.splice(_loc4_,1);
            }
         }
      }
      
      private function modifyQuestData(param1:QuestMessageData) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in this.var_338)
         {
            if(_loc4_.id == param1.id)
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            _loc5_ = new Quest(param1,this);
            this.var_338[_loc3_] = _loc5_;
            _loc6_ = this.var_284.getListItemIndex(_loc2_.view);
            this.var_284.removeListItem(_loc2_.view);
            if(_loc6_ > -1)
            {
               this.var_284.addListItemAt(_loc5_.view,_loc6_);
            }
            else
            {
               this.var_284.addListItem(_loc5_.view);
            }
            if(this.var_489 == _loc2_)
            {
               this.activateListItem(_loc5_);
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
      }
      
      private function onConfirm(param1:IConfirmDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function find(param1:String) : IWindow
      {
         var _loc2_:* = null;
         if(this._window is IWindowContainer)
         {
            _loc2_ = IWindowContainer(this._window).findChildByName(param1);
         }
         else if(this._window is IItemListWindow)
         {
            _loc2_ = IItemListWindow(this._window).getListItemByName(param1);
         }
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function setText(param1:String, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:IWindow = this.find(param1);
         if(_loc4_)
         {
            if(param3)
            {
               param2 = "${" + param2 + "}";
            }
            _loc4_.caption = param2;
         }
      }
   }
}
