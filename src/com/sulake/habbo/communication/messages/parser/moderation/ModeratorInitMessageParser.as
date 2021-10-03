package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2263:Boolean;
      
      private var var_1602:Array;
      
      private var var_2260:Boolean;
      
      private var var_2264:Boolean;
      
      private var var_2257:Boolean;
      
      private var var_154:Array;
      
      private var var_2259:Boolean;
      
      private var var_2258:Boolean;
      
      private var var_1603:Array;
      
      private var var_2262:Boolean;
      
      private var var_2261:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2261;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2263;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2260;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2259;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2258;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1602;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_154 = [];
         var_1602 = [];
         _roomMessageTemplates = [];
         var_1603 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_154.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1602.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1603.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2259 = param1.readBoolean();
         var_2257 = param1.readBoolean();
         var_2260 = param1.readBoolean();
         var_2264 = param1.readBoolean();
         var_2261 = param1.readBoolean();
         var_2258 = param1.readBoolean();
         var_2263 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2262 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2264;
      }
      
      public function get method_8() : Array
      {
         return var_1603;
      }
      
      public function get issues() : Array
      {
         return var_154;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2262;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2257;
      }
   }
}
