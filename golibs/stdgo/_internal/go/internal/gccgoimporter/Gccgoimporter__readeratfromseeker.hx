package stdgo._internal.go.internal.gccgoimporter;
function _readerAtFromSeeker(_rs:stdgo._internal.io.Io_readseeker.ReadSeeker):stdgo._internal.io.Io_readerat.ReaderAt {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rs) : stdgo._internal.io.Io_readerat.ReaderAt)) : stdgo._internal.io.Io_readerat.ReaderAt), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readerat.ReaderAt), _1 : false };
            }, _ret = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _ret;
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt(_rs) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt));
    }
