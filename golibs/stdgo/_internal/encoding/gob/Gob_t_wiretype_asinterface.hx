package stdgo._internal.encoding.gob;
class T_wireType_asInterface {
    @:keep
    @:tdfield
    public dynamic function _string():stdgo.GoString return @:_0 __self__.value._string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_t_wiretypepointer.T_wireTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
