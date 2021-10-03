package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_610:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2223:int;
      
      private var var_2225:int;
      
      private var _color:uint;
      
      private var var_1073:int;
      
      private var var_2224:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_610);
         this.var_2223 = param1;
         this.var_2225 = param2;
         this._color = param3;
         this.var_1073 = param4;
         this.var_2224 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2223;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2225;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1073;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2224;
      }
   }
}
