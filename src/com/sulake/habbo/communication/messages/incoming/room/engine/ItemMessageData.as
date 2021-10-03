package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_86:Number = 0;
      
      private var _data:String = "";
      
      private var var_1532:int = 0;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2115:Boolean = false;
      
      private var var_2380:String = "";
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_227:String = "";
      
      private var var_2116:int = 0;
      
      private var var_2117:int = 0;
      
      private var var_1782:int = 0;
      
      private var var_1775:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2115 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2115;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_194)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_227;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_194)
         {
            var_1782 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_194)
         {
            var_2116 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_194)
         {
            var_2117 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_194)
         {
            var_227 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_194)
         {
            var_1775 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_194)
         {
            var_34 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1782;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_194)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2116;
      }
      
      public function get wallY() : Number
      {
         return var_2117;
      }
      
      public function get localY() : Number
      {
         return var_1775;
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_86 = param1;
         }
      }
   }
}
