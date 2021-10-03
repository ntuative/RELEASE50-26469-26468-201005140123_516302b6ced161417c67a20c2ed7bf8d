package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_725:IAssetLoader;
      
      private var var_1375:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1375 = param1;
         var_725 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_725;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_725 != null)
            {
               if(true)
               {
                  var_725.dispose();
                  var_725 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1375;
      }
   }
}
