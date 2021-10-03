package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_321:String = "";
      
      private var var_1794:String = "";
      
      private var var_1795:int = 0;
      
      private var var_1792:int = 0;
      
      private var _type:int = 0;
      
      private var var_1796:String = "";
      
      private var var_626:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1793:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1795 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1796 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_321 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_626 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1795;
      }
      
      public function set webID(param1:int) : void
      {
         var_1793 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1796;
      }
      
      public function set custom(param1:String) : void
      {
         var_1794 = param1;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function get sex() : String
      {
         return var_626;
      }
      
      public function get custom() : String
      {
         return var_1794;
      }
      
      public function get webID() : int
      {
         return var_1793;
      }
      
      public function set xp(param1:int) : void
      {
         var_1792 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1792;
      }
   }
}
