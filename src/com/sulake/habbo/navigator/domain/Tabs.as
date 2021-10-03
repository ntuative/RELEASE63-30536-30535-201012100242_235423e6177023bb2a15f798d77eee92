package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_331:int = 1;
      
      public static const const_257:int = 2;
      
      public static const const_274:int = 3;
      
      public static const const_313:int = 4;
      
      public static const const_244:int = 5;
      
      public static const const_369:int = 1;
      
      public static const const_598:int = 2;
      
      public static const const_723:int = 3;
      
      public static const const_617:int = 4;
      
      public static const const_258:int = 5;
      
      public static const const_805:int = 6;
      
      public static const const_809:int = 7;
      
      public static const const_254:int = 8;
      
      public static const const_381:int = 9;
      
      public static const const_1630:int = 10;
      
      public static const const_761:int = 11;
      
      public static const const_537:int = 12;
       
      
      private var var_351:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_351 = new Array();
         this.var_351.push(new Tab(this._navigator,const_331,const_537,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_429));
         this.var_351.push(new Tab(this._navigator,const_257,const_369,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_429));
         this.var_351.push(new Tab(this._navigator,const_313,const_761,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_908));
         this.var_351.push(new Tab(this._navigator,const_274,const_258,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_429));
         this.var_351.push(new Tab(this._navigator,const_244,const_254,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_613));
         this.setSelectedTab(const_331);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_313;
      }
      
      public function get tabs() : Array
      {
         return this.var_351;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_351)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_351)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_351)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
