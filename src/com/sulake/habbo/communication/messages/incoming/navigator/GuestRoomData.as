package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1663:int;
      
      private var var_2173:String;
      
      private var var_2174:int;
      
      private var var_2172:int;
      
      private var var_698:Boolean;
      
      private var var_1801:Boolean;
      
      private var var_396:int;
      
      private var var_1188:String;
      
      private var var_1755:int;
      
      private var var_1156:int;
      
      private var _ownerName:String;
      
      private var var_699:String;
      
      private var var_2171:int;
      
      private var var_2175:RoomThumbnailData;
      
      private var var_1752:Boolean;
      
      private var var_648:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_648 = new Array();
         super();
         var_396 = param1.readInteger();
         var_698 = param1.readBoolean();
         var_699 = param1.readString();
         _ownerName = param1.readString();
         var_1755 = param1.readInteger();
         var_1663 = param1.readInteger();
         var_2171 = param1.readInteger();
         var_1188 = param1.readString();
         var_2174 = param1.readInteger();
         var_1752 = param1.readBoolean();
         var_2172 = param1.readInteger();
         var_1156 = param1.readInteger();
         var_2173 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_648.push(_loc4_);
            _loc3_++;
         }
         var_2175 = new RoomThumbnailData(param1);
         var_1801 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2171;
      }
      
      public function get roomName() : String
      {
         return var_699;
      }
      
      public function get userCount() : int
      {
         return var_1663;
      }
      
      public function get score() : int
      {
         return var_2172;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2173;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1752;
      }
      
      public function get tags() : Array
      {
         return var_648;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1801;
      }
      
      public function get event() : Boolean
      {
         return var_698;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_648 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1156;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2174;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2175;
      }
      
      public function get doorMode() : int
      {
         return var_1755;
      }
      
      public function get flatId() : int
      {
         return var_396;
      }
      
      public function get description() : String
      {
         return var_1188;
      }
   }
}
