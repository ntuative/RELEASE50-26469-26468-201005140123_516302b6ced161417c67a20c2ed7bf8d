package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2204:String;
      
      private var var_1320:String;
      
      private var var_2205:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2205 = param1;
         var_1320 = param2;
         var_2204 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2205,var_1320,var_2204];
      }
      
      public function dispose() : void
      {
      }
   }
}
