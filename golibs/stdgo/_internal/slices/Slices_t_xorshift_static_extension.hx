package stdgo._internal.slices;
@:keep @:allow(stdgo._internal.slices.Slices.T_xorshift_asInterface) class T_xorshift_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function next( _r:stdgo.Pointer<stdgo._internal.slices.Slices_t_xorshift.T_xorshift>):stdgo.GoUInt64 {
        _r.value = (_r.value ^ ((_r.value << (13i64 : stdgo.GoUInt64) : stdgo._internal.slices.Slices_t_xorshift.T_xorshift)) : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
        _r.value = (_r.value ^ ((_r.value >> (17i64 : stdgo.GoUInt64) : stdgo._internal.slices.Slices_t_xorshift.T_xorshift)) : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
        _r.value = (_r.value ^ ((_r.value << (5i64 : stdgo.GoUInt64) : stdgo._internal.slices.Slices_t_xorshift.T_xorshift)) : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
        return (_r.value : stdgo.GoUInt64);
    }
}
