package stdgo._internal.go.internal.gccgoimporter;
function _readMagic(_reader:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        {
            var __tmp__ = _reader.read((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
        };
        {
            var __tmp__ = _reader.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
        };
        return { _0 : ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
