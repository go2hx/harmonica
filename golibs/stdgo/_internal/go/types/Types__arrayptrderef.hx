package stdgo._internal.go.types;
function _arrayPtrDeref(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, _p = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under((@:checkr _p ?? throw "null pointer dereference")._base)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                    }, _a = __tmp__._0, __0 = __tmp__._1;
                    if ((_a != null && ((_a : Dynamic).__nil__ == null || !(_a : Dynamic).__nil__))) {
                        return stdgo.Go.asInterface(_a);
                    };
                };
            };
        };
        return _typ;
    }
