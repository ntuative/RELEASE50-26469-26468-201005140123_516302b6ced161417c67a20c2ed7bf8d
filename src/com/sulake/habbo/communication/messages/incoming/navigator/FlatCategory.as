package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_375:Boolean;
      
      private var var_1302:int;
      
      private var var_1559:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1302 = param1.readInteger();
         var_1559 = param1.readString();
         var_375 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_375;
      }
      
      public function get nodeName() : String
      {
         return var_1559;
      }
      
      public function get nodeId() : int
      {
         return var_1302;
      }
   }
}
