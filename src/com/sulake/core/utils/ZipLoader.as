package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_472:uint = 0;
      
      private var var_97:FZip;
      
      private var var_1177:Array;
      
      private var var_1725:uint = 0;
      
      private var var_814:int = 0;
      
      private var var_473:uint = 0;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1177 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_165))
         {
            failure("IO Error, load operation failed for file \"undefined\" (" + var_472 + "/" + var_473 + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_472;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_165))
         {
            failure("Parse Error, load operation failed for file \"undefined\" (" + var_472 + "/" + var_473 + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return var_473;
      }
      
      public function get resources() : Array
      {
         return var_1177;
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_97)
         {
            var_97.removeEventListener(Event.COMPLETE,onComplete);
            var_97.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_97.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_97.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_97.removeEventListener(FZipErrorEvent.const_122,onParseError);
         }
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var name:String = null;
         var event:Event = param1;
         try
         {
            name = getQualifiedClassName(var_15.content);
            var_1177.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_814;
            if(var_1177.length == var_1725)
            {
               var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_473,var_472));
            }
            else
            {
               var_15.loadBytes(var_97.getFileAt(var_814).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\" (" + var_472 + "/" + var_473 + " bytes): " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_473 = param1.bytesTotal;
         var_472 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_473,var_472));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 5) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_51 = param1;
         _name = parseNameFromUrl(var_51.url);
         var_294 = param3;
         if(var_97)
         {
            var_97.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_97 = new FZip();
         var_97.addEventListener(Event.COMPLETE,onComplete);
         var_97.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_97.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_97.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_97.addEventListener(FZipErrorEvent.const_122,onParseError);
         var_97.load(var_51);
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_814 = 0;
         var_1725 = var_97.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_15)
            {
               var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_15.loadBytes(var_97.getFileAt(var_814).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_165))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\" (" + var_472 + "/" + var_473 + " bytes): " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_165 = param1.status;
         debug("Load event STATUS " + var_165 + " for file \"" + var_51.url + "\"");
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_294 > 0)
            {
               if(var_97)
               {
                  var_97.close();
               }
               addRequestCounterToUrlRequest(var_51,const_1033 - var_294);
               if(var_1120)
               {
                  var_51.requestHeaders.push(new URLRequestHeader("pragma","no-cache"));
                  var_51.requestHeaders.push(new URLRequestHeader("Cache-Control","no-cache"));
                  var_1120 = false;
               }
               var_97.load(var_51);
               --var_294;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_51.url + "\" (" + var_472 + "/" + var_473 + " bytes)");
            removeEventListeners();
         }
         return false;
      }
   }
}
