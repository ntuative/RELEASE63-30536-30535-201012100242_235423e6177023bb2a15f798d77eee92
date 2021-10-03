package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_67:ITextFieldWindow;
      
      private var var_551:Boolean;
      
      private var var_1341:String = "";
      
      private var var_1539:int;
      
      private var var_1540:Function;
      
      private var var_2070:String = "";
      
      private var var_116:IWindowContainer;
      
      private var var_2071:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2072:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_67 = param2;
         this.var_1539 = param3;
         this.var_1540 = param4;
         if(param5 != null)
         {
            this.var_551 = true;
            this.var_1341 = param5;
            this.var_67.text = param5;
         }
         Util.setProcDirectly(this.var_67,this.onInputClick);
         this.var_67.addEventListener(WindowKeyboardEvent.const_141,this.checkEnterPress);
         this.var_67.addEventListener(WindowEvent.const_103,this.checkMaxLen);
         this.var_2071 = this.var_67.textBackground;
         this._orgTextBackgroundColor = this.var_67.textBackgroundColor;
         this.var_2072 = this.var_67.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_67.textBackground = this.var_2071;
         this.var_67.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_67.textColor = this.var_2072;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_67.textBackground = true;
         this.var_67.textBackgroundColor = 4294021019;
         this.var_67.textColor = 4278190080;
         if(this.var_116 == null)
         {
            this.var_116 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_116,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_67.parent).addChild(this.var_116);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_116.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_116.findChildByName("border").width = _loc2_.width + 15;
         this.var_116.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_67.getLocalPosition(_loc3_);
         this.var_116.x = _loc3_.x;
         this.var_116.y = _loc3_.y - this.var_116.height + 3;
         var _loc4_:IWindow = this.var_116.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_116.width / 2 - _loc4_.width / 2;
         this.var_116.x += (this.var_67.width - this.var_116.width) / 2;
         this.var_116.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1341 != null)
         {
            this.var_67.text = this.var_1341;
            this.var_551 = true;
         }
         else
         {
            this.var_67.text = "";
            this.var_551 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_551)
         {
            return this.var_2070;
         }
         return this.var_67.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_551 = false;
         this.var_67.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_116 != null)
         {
            this.var_116.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_67;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_551 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_176)
         {
            return;
         }
         if(!this.var_551)
         {
            return;
         }
         this.var_67.text = this.var_2070;
         this.var_551 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1540 != null)
            {
               this.var_1540();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_67.text;
         if(_loc2_.length > this.var_1539)
         {
            this.var_67.text = _loc2_.substring(0,this.var_1539);
         }
      }
   }
}
