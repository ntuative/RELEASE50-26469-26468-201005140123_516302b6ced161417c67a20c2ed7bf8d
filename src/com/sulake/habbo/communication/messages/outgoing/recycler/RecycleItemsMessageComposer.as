package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_907:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_907 = new Array();
         var_907.push(param1.length);
         var_907 = var_907.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_907;
      }
   }
}
