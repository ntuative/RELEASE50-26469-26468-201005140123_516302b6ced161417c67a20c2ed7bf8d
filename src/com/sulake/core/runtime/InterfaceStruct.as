package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_427:uint;
      
      private var var_1035:IUnknown;
      
      private var var_1257:String;
      
      private var var_1036:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1036 = param1;
         var_1257 = getQualifiedClassName(var_1036);
         var_1035 = param2;
         var_427 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1036;
      }
      
      public function get disposed() : Boolean
      {
         return var_1035 == null;
      }
      
      public function get references() : uint
      {
         return var_427;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_427) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1035;
      }
      
      public function get iis() : String
      {
         return var_1257;
      }
      
      public function reserve() : uint
      {
         return ++var_427;
      }
      
      public function dispose() : void
      {
         var_1036 = null;
         var_1257 = null;
         var_1035 = null;
         var_427 = 0;
      }
   }
}
