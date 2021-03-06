package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   
   public interface IRoomObject
   {
       
      
      function getId() : int;
      
      function getInstanceId() : int;
      
      function getType() : String;
      
      function getLocation() : IVector3d;
      
      function getDirection() : IVector3d;
      
      function getModel() : IRoomObjectModel;
      
      function getVisualization() : IRoomObjectVisualization;
      
      function method_5() : IRoomObjectMouseHandler;
      
      function getState(param1:int) : int;
      
      function getUpdateID() : int;
   }
}
