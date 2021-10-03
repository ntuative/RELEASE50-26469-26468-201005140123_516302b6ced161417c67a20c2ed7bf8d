package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1324:String = "F";
      
      public static const const_951:String = "M";
       
      
      private var var_87:Number = 0;
      
      private var var_321:String = "";
      
      private var var_1798:int = 0;
      
      private var var_1794:String = "";
      
      private var var_1795:int = 0;
      
      private var var_1792:int = 0;
      
      private var var_1796:String = "";
      
      private var var_626:String = "";
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_227:int = 0;
      
      private var var_1797:String = "";
      
      private var _name:String = "";
      
      private var var_1793:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_194)
         {
            var_227 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_194)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1798;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_194)
         {
            var_1795 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1797;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_194)
         {
            var_1796 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_194)
         {
            var_1797 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_194)
         {
            var_1792 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_194)
         {
            var_321 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_194)
         {
            var_1798 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_194)
         {
            var_626 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1795;
      }
      
      public function get groupID() : String
      {
         return var_1796;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_194)
         {
            var_1793 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_194)
         {
            var_1794 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function get sex() : String
      {
         return var_626;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function get webID() : int
      {
         return var_1793;
      }
      
      public function get custom() : String
      {
         return var_1794;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_86 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_194)
         {
            var_87 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1792;
      }
   }
}
