package com.sulake.habbo.avatar.animation
{
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import flash.utils.Dictionary;
   
   public class AnimationLayerData implements IAnimationLayerData
   {
      
      public static const const_687:String = "bodypart";
      
      public static const const_446:String = "fx";
       
      
      private var _id:String;
      
      private var _action:IActiveActionData;
      
      private var var_2416:int;
      
      private var _dx:int;
      
      private var var_1232:int;
      
      private var var_1233:int;
      
      private var var_1522:int;
      
      private var _type:String;
      
      private var var_1087:String;
      
      private var var_547:int;
      
      private var _items:Dictionary;
      
      public function AnimationLayerData(param1:AvatarStructure, param2:XML, param3:String, param4:int, param5:IActionDefinition)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         this._items = new Dictionary();
         super();
         this.var_547 = param4;
         this._id = String(param2.@id);
         this.var_2416 = parseInt(param2.@frame);
         this._dx = parseInt(param2.@dx);
         this.var_1232 = parseInt(param2.@dy);
         this.var_1233 = parseInt(param2.@dz);
         this.var_1522 = parseInt(param2.@dd);
         this._type = param3;
         this.var_1087 = String(param2.@base);
         for each(_loc6_ in param2.item)
         {
            this._items[String(_loc6_.@id)] = String(_loc6_.@base);
         }
         _loc7_ = "";
         if(this.var_1087 != "")
         {
            _loc7_ = String(this.baseAsInt());
         }
         if(param5 != null)
         {
            this._action = new ActiveActionData(param5.state,this.base);
            this._action.definition = param5;
         }
      }
      
      public function get items() : Dictionary
      {
         return this._items;
      }
      
      private function baseAsInt() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_1087.length)
         {
            _loc1_ += this.var_1087.charCodeAt(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get animationFrame() : int
      {
         return this.var_2416;
      }
      
      public function get dx() : int
      {
         return this._dx;
      }
      
      public function get dy() : int
      {
         return this.var_1232;
      }
      
      public function get dz() : int
      {
         return this.var_1233;
      }
      
      public function get directionOffset() : int
      {
         return this.var_1522;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get base() : String
      {
         return this.var_1087;
      }
      
      public function get action() : IActiveActionData
      {
         return this._action;
      }
   }
}
