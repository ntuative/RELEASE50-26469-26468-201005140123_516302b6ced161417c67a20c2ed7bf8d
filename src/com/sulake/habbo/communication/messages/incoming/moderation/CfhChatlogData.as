package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1689:int;
      
      private var var_963:int;
      
      private var var_1735:int;
      
      private var var_1434:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1434 = param1.readInteger();
         var_1735 = param1.readInteger();
         var_963 = param1.readInteger();
         var_1689 = param1.readInteger();
         var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1434);
      }
      
      public function get chatRecordId() : int
      {
         return var_1689;
      }
      
      public function get reportedUserId() : int
      {
         return var_963;
      }
      
      public function get callerUserId() : int
      {
         return var_1735;
      }
      
      public function get callId() : int
      {
         return var_1434;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_115;
      }
   }
}
