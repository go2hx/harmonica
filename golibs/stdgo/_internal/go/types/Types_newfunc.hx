package stdgo._internal.go.types;
function newFunc(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        var _typ:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        if ((_sig != null && ((_sig : Dynamic).__nil__ == null || !(_sig : Dynamic).__nil__))) {
            _typ = stdgo.Go.asInterface(_sig);
        };
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_func.Func((new stdgo._internal.go.types.Types_t_object.T_object(null, _pos, _pkg, _name?.__copy__(), _typ, (0u32 : stdgo.GoUInt32), stdgo._internal.go.types.Types__colorfor._colorFor(_typ), stdgo._internal.go.types.Types__nopos._nopos) : stdgo._internal.go.types.Types_t_object.T_object), false, null) : stdgo._internal.go.types.Types_func.Func)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
    }
