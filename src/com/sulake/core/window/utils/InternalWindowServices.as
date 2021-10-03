package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2335:uint;
      
      private var var_882:IWindowToolTipAgentService;
      
      private var var_883:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_879:IWindowFocusManagerService;
      
      private var var_881:IWindowMouseListenerService;
      
      private var var_880:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2335 = 0;
         var_121 = param2;
         _windowContext = param1;
         var_880 = new WindowMouseDragger(param2);
         var_883 = new WindowMouseScaler(param2);
         var_881 = new WindowMouseListener(param2);
         var_879 = new FocusManager(param2);
         var_882 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_883;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_879;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_882;
      }
      
      public function dispose() : void
      {
         if(var_880 != null)
         {
            var_880.dispose();
            var_880 = null;
         }
         if(var_883 != null)
         {
            var_883.dispose();
            var_883 = null;
         }
         if(var_881 != null)
         {
            var_881.dispose();
            var_881 = null;
         }
         if(var_879 != null)
         {
            var_879.dispose();
            var_879 = null;
         }
         if(var_882 != null)
         {
            var_882.dispose();
            var_882 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_881;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_880;
      }
   }
}
