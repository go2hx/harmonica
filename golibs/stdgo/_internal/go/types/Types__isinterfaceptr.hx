package stdgo._internal.go.types;
function _isInterfacePtr(t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(t)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
        }, _p = __tmp__._0, __0 = __tmp__._1;
        return ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) && stdgo._internal.go.types.Types_isinterface.isInterface((@:checkr _p ?? throw "null pointer dereference")._base) : Bool);
    }
