package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_691:String = "RWUAM_WHISPER_USER";
      
      public static const const_714:String = "RWUAM_IGNORE_USER";
      
      public static const const_734:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_403:String = "RWUAM_KICK_USER";
      
      public static const const_627:String = "RWUAM_BAN_USER";
      
      public static const const_581:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_812:String = "RWUAM_RESPECT_USER";
      
      public static const const_718:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_705:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_685:String = "RWUAM_START_TRADING";
      
      public static const const_566:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_449:String = "RWUAM_KICK_BOT";
      
      public static const const_719:String = "RWUAM_REPORT";
      
      public static const const_402:String = "RWUAM_PICKUP_PET";
      
      public static const const_1428:String = "RWUAM_TRAIN_PET";
      
      public static const const_434:String = " RWUAM_RESPECT_PET";
      
      public static const const_320:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
