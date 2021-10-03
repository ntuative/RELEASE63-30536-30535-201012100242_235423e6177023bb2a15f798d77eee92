package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1706:IID;
      
      private var var_678:Boolean;
      
      private var var_1066:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1706 = param1;
         this.var_1066 = new Array();
         this.var_678 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1706;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_678;
      }
      
      public function get receivers() : Array
      {
         return this.var_1066;
      }
      
      public function dispose() : void
      {
         if(!this.var_678)
         {
            this.var_678 = true;
            this.var_1706 = null;
            while(this.var_1066.length > 0)
            {
               this.var_1066.pop();
            }
            this.var_1066 = null;
         }
      }
   }
}
