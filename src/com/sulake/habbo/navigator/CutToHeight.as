package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_157:String;
      
      private var _text:ITextWindow;
      
      private var var_481:int;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function test(param1:int) : Boolean
      {
         this._text.text = this.var_157.substring(0,param1) + "...";
         return this._text.textHeight > this.var_481;
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         this.var_157 = param1;
         this._text = param2;
         this.var_481 = param3;
      }
   }
}
