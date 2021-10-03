package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.events.EventDispatcher;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_518:int = 8;
      
      public static const const_1451:int = 10;
      
      public static const const_1240:int = 6;
      
      private static var var_996:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1337:int = 0;
      
      public static const const_1598:int = 1;
      
      public static const const_1449:int = 2;
      
      public static const const_1594:int = 3;
      
      public static const const_1484:int = 4;
      
      public static const const_1502:int = 5;
      
      public static const const_1478:int = 9;
      
      public static const const_1454:int = 7;
       
      
      private var var_169:uint = 0;
      
      private var var_995:uint = 0;
      
      private var var_682:Date;
      
      private var var_1743:int = -1;
      
      private var var_93:Function;
      
      private var var_476:Boolean = false;
      
      private var _eventDispatcher:EventDispatcher;
      
      private var var_2316:int = -1;
      
      private var var_1180:uint = 0;
      
      private var var_1744:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_819:uint;
      
      private var var_20:ByteArray;
      
      private var var_684:uint;
      
      private var var_1441:Boolean = false;
      
      private var var_2317:int = -1;
      
      private var var_1442:String = "2.0";
      
      private var var_170:Boolean = false;
      
      private var var_1745:Boolean = false;
      
      private var var_344:String;
      
      private var var_571:uint = 0;
      
      private var var_1181:int = 0;
      
      private var var_395:String = "";
      
      private var var_683:int = 8;
      
      private var var_1440:Boolean = false;
      
      public function FZipFile(param1:EventDispatcher, param2:String = "utf-8")
      {
         var_93 = parseFileHead;
         super();
         var_344 = param2;
         _eventDispatcher = param1;
         _extraFields = new Dictionary();
         var_20 = new ByteArray();
         var_20.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_571;
      }
      
      public function set filename(param1:String) : void
      {
         var_395 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_170 && false)
         {
            var_20.position = 0;
            if(var_996)
            {
               var_20.uncompress.apply(var_20,["deflate"]);
            }
            else
            {
               var_20.uncompress();
            }
            var_20.position = 0;
            var_170 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_395;
      }
      
      public function get date() : Date
      {
         return var_682;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && var_93(param1))
         {
         }
         return var_93 === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1440)
         {
            var_93 = parseFileIdle;
            _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_122,"Data descriptors are not supported."));
            return false;
         }
         if(var_169 == 0)
         {
            var_93 = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_169)
            {
               return false;
            }
            parseContent(param1);
            var_93 = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1442;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_170)
         {
            uncompress();
         }
         var_20.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_20.readUTFBytes(var_20.bytesAvailable);
         }
         else
         {
            _loc3_ = var_20.readMultiByte(var_20.bytesAvailable,param2);
         }
         var_20.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_683 === const_518 && !var_1441)
         {
            if(var_996)
            {
               param1.readBytes(var_20,0,var_169);
            }
            else
            {
               if(!var_476)
               {
                  _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_122,"Adler32 checksum not found."));
                  return;
               }
               var_20.writeByte(120);
               _loc2_ = uint(~var_1743 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_20.writeByte(_loc2_);
               param1.readBytes(var_20,2,var_169);
               var_20.position = var_20.length;
               var_20.writeUnsignedInt(var_819);
            }
            var_170 = true;
         }
         else
         {
            if(var_683 != const_1337)
            {
               _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_122,"Compression method " + var_683 + " is not supported."));
               return;
            }
            param1.readBytes(var_20,0,var_169);
            var_170 = false;
         }
         var_20.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_995 + var_1180 > 0)
            {
               var_93 = parseFileHeadExt;
            }
            else
            {
               var_93 = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_20.length = 0;
         var_20.position = 0;
         var_170 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_20.writeUTFBytes(param1);
            }
            else
            {
               var_20.writeMultiByte(param1,param2);
            }
            var_684 = ChecksumUtil.CRC32(var_20);
            var_476 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_682 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1181 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1181 << 8 | 20);
         param1.writeShort(var_344 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_518);
         var _loc5_:Date = var_682 != null ? var_682 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_684);
         param1.writeUnsignedInt(var_169);
         param1.writeUnsignedInt(var_571);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_344 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_395);
         }
         else
         {
            _loc8_.writeMultiByte(var_395,var_344);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_476)
            {
               _loc16_ = var_170;
               if(_loc16_)
               {
                  uncompress();
               }
               var_819 = ChecksumUtil.Adler32(var_20,0,var_20.length);
               var_476 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_819);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_344 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1744);
            }
            else
            {
               _loc8_.writeMultiByte(var_1744,var_344);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_169 > 0)
         {
            if(var_996)
            {
               _loc13_ = 0;
               param1.writeBytes(var_20,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_20,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_169;
      }
      
      protected function compress() : void
      {
         if(!var_170)
         {
            if(false)
            {
               var_20.position = 0;
               var_571 = var_20.length;
               if(var_996)
               {
                  var_20.compress.apply(var_20,["deflate"]);
                  var_169 = var_20.length;
               }
               else
               {
                  var_20.compress();
                  var_169 = -6;
               }
               var_20.position = 0;
               var_170 = true;
            }
            else
            {
               var_169 = 0;
               var_571 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_995 + var_1180)
         {
            parseHeadExt(param1);
            var_93 = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_344 == "utf-8")
         {
            var_395 = param1.readUTFBytes(var_995);
         }
         else
         {
            var_395 = param1.readMultiByte(var_995,var_344);
         }
         var _loc2_:uint = var_1180;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_122,"Parse error in file " + var_395 + ": Extra field data size too big."));
               return;
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_819 = param1.readUnsignedInt();
               var_476 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1181 = _loc2_ >> 8;
         var_1442 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_683 = param1.readUnsignedShort();
         var_1441 = (_loc3_ & 1) !== 0;
         var_1440 = (_loc3_ & 8) !== 0;
         var_1745 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_344 = "utf-8";
         }
         if(var_683 === const_1240)
         {
            var_2317 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2316 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_683 === const_518)
         {
            var_1743 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_682 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_684 = param1.readUnsignedInt();
         var_169 = param1.readUnsignedInt();
         var_571 = param1.readUnsignedInt();
         var_995 = param1.readUnsignedShort();
         var_1180 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_20,0,param1.length);
            var_684 = ChecksumUtil.CRC32(var_20);
            var_476 = false;
         }
         else
         {
            var_20.length = 0;
            var_20.position = 0;
            var_170 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_395 + "\n  date:" + var_682 + "\n  sizeCompressed:" + var_169 + "\n  sizeUncompressed:" + var_571 + "\n  versionHost:" + var_1181 + "\n  versionNumber:" + var_1442 + "\n  compressionMethod:" + var_683 + "\n  encrypted:" + var_1441 + "\n  hasDataDescriptor:" + var_1440 + "\n  hasCompressedPatchedData:" + var_1745 + "\n  filenameEncoding:" + var_344 + "\n  crc32:" + var_684.toString(16) + "\n  adler32:" + var_819.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_170)
         {
            uncompress();
         }
         return var_20;
      }
   }
}
