package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_827:int;
      
      private var var_696:Boolean;
      
      private var var_1454:Boolean;
      
      private var var_562:String;
      
      private var var_1363:int;
      
      private var var_1632:String;
      
      private var var_1634:String;
      
      private var var_1633:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_827 = param1.readInteger();
         this.var_696 = param1.readBoolean();
         this.var_1454 = param1.readBoolean();
         this.var_562 = param1.readString();
         this.var_1363 = param1.readInteger();
         this.var_1632 = param1.readString();
         this.var_1634 = param1.readString();
         this.var_1633 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_827;
      }
      
      public function get online() : Boolean
      {
         return this.var_696;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1454;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get categoryId() : int
      {
         return this.var_1363;
      }
      
      public function get motto() : String
      {
         return this.var_1632;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1634;
      }
      
      public function get realName() : String
      {
         return this.var_1633;
      }
   }
}
