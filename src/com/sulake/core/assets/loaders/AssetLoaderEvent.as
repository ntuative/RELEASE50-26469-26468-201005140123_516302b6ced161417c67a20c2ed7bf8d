package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_1019:String = "AssetLoaderEventUnload";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_967:String = "AssetLoaderEventOpen";
      
      public static const const_997:String = "AssetLoaderEventProgress";
      
      public static const const_896:String = "AssetLoaderEventStatus";
      
      public static const const_37:String = "AssetLoaderEventComplete";
       
      
      private var var_165:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_165 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_165;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_165);
      }
   }
}
