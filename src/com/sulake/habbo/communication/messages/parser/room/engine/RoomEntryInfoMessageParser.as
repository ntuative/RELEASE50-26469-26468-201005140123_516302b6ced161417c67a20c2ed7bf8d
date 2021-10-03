package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2220:int;
      
      private var var_397:Boolean;
      
      private var var_2219:Boolean;
      
      private var var_926:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2219 = param1.readBoolean();
         if(var_2219)
         {
            var_2220 = param1.readInteger();
            var_397 = param1.readBoolean();
         }
         else
         {
            var_926 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_926 != null)
         {
            var_926.dispose();
            var_926 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2220;
      }
      
      public function get owner() : Boolean
      {
         return var_397;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2219;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_926;
      }
   }
}
