package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_typeParamsById_asInterface) class T_typeParamsById_static_extension {
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _s:stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById = _s;
        return ((@:checkr _s[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._id < (@:checkr _s[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._id : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById):stdgo.GoInt {
        @:recv var _s:stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById = _s;
        return (_s.length);
    }
}
