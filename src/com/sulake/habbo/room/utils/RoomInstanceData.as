package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_659:TileHeightMap = null;
      
      private var var_983:LegacyWallGeometry = null;
      
      private var var_984:RoomCamera = null;
      
      private var var_658:SelectedRoomObjectData = null;
      
      private var var_657:SelectedRoomObjectData = null;
      
      private var var_2011:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_983 = new LegacyWallGeometry();
         this.var_984 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_659;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_659 != null)
         {
            this.var_659.dispose();
         }
         this.var_659 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_983;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_984;
      }
      
      public function get worldType() : String
      {
         return this.var_2011;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2011 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_658;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_658 != null)
         {
            this.var_658.dispose();
         }
         this.var_658 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_657;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_657 != null)
         {
            this.var_657.dispose();
         }
         this.var_657 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_659 != null)
         {
            this.var_659.dispose();
            this.var_659 = null;
         }
         if(this.var_983 != null)
         {
            this.var_983.dispose();
            this.var_983 = null;
         }
         if(this.var_984 != null)
         {
            this.var_984.dispose();
            this.var_984 = null;
         }
         if(this.var_658 != null)
         {
            this.var_658.dispose();
            this.var_658 = null;
         }
         if(this.var_657 != null)
         {
            this.var_657.dispose();
            this.var_657 = null;
         }
      }
   }
}
