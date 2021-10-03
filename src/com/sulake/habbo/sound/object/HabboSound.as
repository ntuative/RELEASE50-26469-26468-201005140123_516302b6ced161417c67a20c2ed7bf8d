package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_971:SoundChannel = null;
      
      private var var_796:Boolean;
      
      private var var_970:Sound = null;
      
      private var var_737:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_970 = param1;
         var_970.addEventListener(Event.COMPLETE,onComplete);
         var_737 = 1;
         var_796 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_796;
      }
      
      public function stop() : Boolean
      {
         var_971.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_796 = false;
         var_971 = var_970.play(0);
         this.volume = var_737;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_737;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_971.position;
      }
      
      public function get length() : Number
      {
         return var_970.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_737 = param1;
         if(var_971 != null)
         {
            var_971.soundTransform = new SoundTransform(var_737);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_796 = true;
      }
   }
}
