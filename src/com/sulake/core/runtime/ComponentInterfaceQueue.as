package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1244:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_862:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1244 = param1;
         var_862 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_862;
      }
      
      public function get identifier() : IID
      {
         return var_1244;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1244 = null;
            while(false)
            {
               var_862.pop();
            }
            var_862 = null;
         }
      }
   }
}
