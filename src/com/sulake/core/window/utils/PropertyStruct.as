package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_187:String = "hex";
      
      public static const const_53:String = "int";
      
      public static const const_277:String = "uint";
      
      public static const const_208:String = "Number";
      
      public static const const_50:String = "Boolean";
      
      public static const const_91:String = "String";
      
      public static const const_240:String = "Point";
      
      public static const const_213:String = "Rectangle";
      
      public static const const_145:String = "Array";
      
      public static const const_214:String = "Map";
       
      
      private var var_545:String;
      
      private var var_157:Object;
      
      private var _type:String;
      
      private var var_2037:Boolean;
      
      private var var_2626:Boolean;
      
      private var var_2036:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_545 = param1;
         this.var_157 = param2;
         this._type = param3;
         this.var_2037 = param4;
         this.var_2626 = param3 == const_214 || param3 == const_145 || param3 == const_240 || param3 == const_213;
         this.var_2036 = param5;
      }
      
      public function get key() : String
      {
         return this.var_545;
      }
      
      public function get value() : Object
      {
         return this.var_157;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2037;
      }
      
      public function get range() : Array
      {
         return this.var_2036;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_187:
               return "0x" + uint(this.var_157).toString(16);
            case const_50:
               return Boolean(this.var_157) == true ? "true" : "false";
            case const_240:
               return "Point(" + Point(this.var_157).x + ", " + Point(this.var_157).y + ")";
            case const_213:
               return "Rectangle(" + Rectangle(this.var_157).x + ", " + Rectangle(this.var_157).y + ", " + Rectangle(this.var_157).width + ", " + Rectangle(this.var_157).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_214:
               _loc3_ = this.var_157 as Map;
               _loc1_ = "<var key=\"" + this.var_545 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_145:
               _loc4_ = this.var_157 as Array;
               _loc1_ = "<var key=\"" + this.var_545 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_240:
               _loc5_ = this.var_157 as Point;
               _loc1_ = "<var key=\"" + this.var_545 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_213:
               _loc6_ = this.var_157 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_545 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_187:
               _loc1_ = "<var key=\"" + this.var_545 + "\" value=\"" + "0x" + uint(this.var_157).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_545 + "\" value=\"" + this.var_157 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
