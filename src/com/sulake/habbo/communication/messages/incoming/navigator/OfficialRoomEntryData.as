package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1274:int = 4;
      
      public static const const_655:int = 3;
      
      public static const const_534:int = 2;
      
      public static const const_805:int = 1;
       
      
      private var var_1666:String;
      
      private var _disposed:Boolean;
      
      private var var_1663:int;
      
      private var var_1664:Boolean;
      
      private var var_903:String;
      
      private var var_790:PublicRoomData;
      
      private var var_1661:int;
      
      private var _index:int;
      
      private var var_1660:String;
      
      private var _type:int;
      
      private var var_1662:String;
      
      private var var_791:GuestRoomData;
      
      private var var_1665:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1666 = param1.readString();
         var_1665 = param1.readString();
         var_1664 = param1.readInteger() == 1;
         var_1660 = param1.readString();
         var_903 = param1.readString();
         var_1661 = param1.readInteger();
         var_1663 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_805)
         {
            var_1662 = param1.readString();
         }
         else if(_type == const_655)
         {
            var_790 = new PublicRoomData(param1);
         }
         else if(_type == const_534)
         {
            var_791 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1661;
      }
      
      public function get popupCaption() : String
      {
         return var_1666;
      }
      
      public function get userCount() : int
      {
         return var_1663;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1664;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_805)
         {
            return 0;
         }
         if(this.type == const_534)
         {
            return this.var_791.maxUserCount;
         }
         if(this.type == const_655)
         {
            return this.var_790.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1665;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_791 != null)
         {
            this.var_791.dispose();
            this.var_791 = null;
         }
         if(this.var_790 != null)
         {
            this.var_790.dispose();
            this.var_790 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_791;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1660;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_790;
      }
      
      public function get picRef() : String
      {
         return var_903;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1662;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
