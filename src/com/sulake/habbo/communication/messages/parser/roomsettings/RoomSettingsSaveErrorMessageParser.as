package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1584:int = 9;
      
      public static const const_1585:int = 4;
      
      public static const const_1558:int = 1;
      
      public static const const_1382:int = 10;
      
      public static const const_1508:int = 2;
      
      public static const const_1210:int = 7;
      
      public static const const_1347:int = 11;
      
      public static const const_1469:int = 3;
      
      public static const const_1284:int = 8;
      
      public static const const_1351:int = 5;
      
      public static const const_1589:int = 6;
      
      public static const const_1276:int = 12;
       
      
      private var var_2270:String;
      
      private var _roomId:int;
      
      private var var_1205:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2270;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1205 = param1.readInteger();
         var_2270 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1205;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
