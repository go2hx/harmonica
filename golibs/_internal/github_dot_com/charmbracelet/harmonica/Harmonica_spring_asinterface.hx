package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
class Spring_asInterface {
    @:keep
    @:tdfield
    public dynamic function update(_pos:stdgo.GoFloat64, _vel:stdgo.GoFloat64, _equilibriumPos:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } return @:_0 __self__.value.update(_pos, _vel, _equilibriumPos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_springpointer.SpringPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
