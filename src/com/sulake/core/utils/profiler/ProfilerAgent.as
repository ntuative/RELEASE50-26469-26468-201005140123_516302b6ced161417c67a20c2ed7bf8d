package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import flash.utils.getQualifiedClassName;
   
   public class ProfilerAgent extends ProfilerAgentTask implements IDisposable
   {
       
      
      protected var var_958:IUpdateReceiver;
      
      public function ProfilerAgent(param1:IUpdateReceiver)
      {
         var_958 = param1;
         var _loc2_:String = getQualifiedClassName(var_958);
         super(_loc2_.slice(_loc2_.lastIndexOf(":") + 1,_loc2_.length));
      }
      
      override public function dispose() : void
      {
         var_958 = null;
         super.dispose();
      }
      
      public function get receiver() : IUpdateReceiver
      {
         return var_958;
      }
      
      public function update(param1:int) : void
      {
         super.start();
         var_958.update(param1);
         super.stop();
      }
   }
}
