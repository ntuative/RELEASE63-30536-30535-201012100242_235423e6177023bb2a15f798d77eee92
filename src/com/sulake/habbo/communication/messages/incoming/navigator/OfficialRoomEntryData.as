package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_971:int = 1;
      
      public static const const_751:int = 2;
      
      public static const const_749:int = 3;
      
      public static const const_1407:int = 4;
       
      
      private var _index:int;
      
      private var var_2153:String;
      
      private var var_2151:String;
      
      private var var_2154:Boolean;
      
      private var var_2155:String;
      
      private var var_807:String;
      
      private var var_2152:int;
      
      private var var_2040:int;
      
      private var _type:int;
      
      private var var_2115:String;
      
      private var var_824:GuestRoomData;
      
      private var var_823:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2153 = param1.readString();
         this.var_2151 = param1.readString();
         this.var_2154 = param1.readInteger() == 1;
         this.var_2155 = param1.readString();
         this.var_807 = param1.readString();
         this.var_2152 = param1.readInteger();
         this.var_2040 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_971)
         {
            this.var_2115 = param1.readString();
         }
         else if(this._type == const_749)
         {
            this.var_823 = new PublicRoomData(param1);
         }
         else if(this._type == const_751)
         {
            this.var_824 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_824 != null)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2153;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2151;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2154;
      }
      
      public function get picText() : String
      {
         return this.var_2155;
      }
      
      public function get picRef() : String
      {
         return this.var_807;
      }
      
      public function get folderId() : int
      {
         return this.var_2152;
      }
      
      public function get tag() : String
      {
         return this.var_2115;
      }
      
      public function get userCount() : int
      {
         return this.var_2040;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_824;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_823;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_971)
         {
            return 0;
         }
         if(this.type == const_751)
         {
            return this.var_824.maxUserCount;
         }
         if(this.type == const_749)
         {
            return this.var_823.maxUsers;
         }
         return 0;
      }
   }
}
