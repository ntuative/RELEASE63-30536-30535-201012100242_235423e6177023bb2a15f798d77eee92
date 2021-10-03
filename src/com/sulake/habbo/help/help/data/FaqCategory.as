package com.sulake.habbo.help.help.data
{
   import com.sulake.core.utils.Map;
   
   public class FaqCategory
   {
       
      
      private var var_1363:int;
      
      private var var_2541:String;
      
      private var var_1502:String;
      
      private var var_147:Map;
      
      private var var_2177:int = 0;
      
      private var var_1729:Date;
      
      public function FaqCategory(param1:int, param2:String)
      {
         super();
         this.var_147 = new Map();
         this.var_1363 = param1;
         this.var_2541 = param2;
      }
      
      public function get categoryId() : int
      {
         return this.var_1363;
      }
      
      public function get categoryTitle() : String
      {
         return this.var_2541;
      }
      
      public function get description() : String
      {
         return this.var_1502;
      }
      
      public function get itemCount() : int
      {
         if(this.var_147.length == 0)
         {
            return this.var_2177;
         }
         return this.var_147.length;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1502 = param1;
      }
      
      public function set itemCount(param1:int) : void
      {
         this.var_2177 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_147 != null)
         {
            this.var_147.dispose();
            this.var_147 = null;
         }
      }
      
      public function storeItem(param1:int, param2:String, param3:String = null) : void
      {
         var _loc4_:FaqItem = this.getItem(param1);
         if(_loc4_ == null)
         {
            _loc4_ = new FaqItem(param1,param2,this.var_147.length,this);
            this.var_147.add(param1,_loc4_);
         }
      }
      
      public function storeItemAnswer(param1:int, param2:String) : void
      {
         var _loc3_:FaqItem = this.getItem(param1);
         if(_loc3_ != null)
         {
            _loc3_.answerText = param2;
         }
      }
      
      public function reset() : void
      {
         if(this.var_147 != null)
         {
            this.var_147.reset();
         }
      }
      
      public function getItemByIndex(param1:int) : FaqItem
      {
         if(param1 >= this.var_147.length)
         {
            return null;
         }
         return this.var_147.getWithIndex(param1);
      }
      
      public function getItemIdByIndex(param1:int) : int
      {
         var _loc2_:FaqItem = this.getItemByIndex(param1);
         if(_loc2_ == null)
         {
            return -1;
         }
         return _loc2_.questionId;
      }
      
      public function hasItem(param1:int) : Boolean
      {
         return this.var_147.getValue(param1) != null;
      }
      
      public function getItem(param1:int) : FaqItem
      {
         return this.var_147.getValue(param1);
      }
      
      public function getItemIndex(param1:int) : int
      {
         var _loc2_:FaqItem = this.getItem(param1);
         if(_loc2_ == null)
         {
            return -1;
         }
         return _loc2_.index;
      }
      
      public function getQuestionTitleArray() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < this.var_147.length)
         {
            _loc2_ = this.var_147.getWithIndex(_loc3_);
            _loc1_.push(_loc2_.questionText);
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function hasContent() : Boolean
      {
         return this.var_147.length > 0 || this.hasUpdatedWithinHour();
      }
      
      public function setTimeStamp() : void
      {
         this.var_1729 = new Date();
      }
      
      public function getAgeSeconds() : Number
      {
         if(this.var_1729 == null)
         {
            return new Date().valueOf();
         }
         return (new Date().valueOf() - this.var_1729.valueOf()) / 1000;
      }
      
      private function hasUpdatedWithinHour() : Boolean
      {
         return this.getAgeSeconds() < 3600;
      }
   }
}
