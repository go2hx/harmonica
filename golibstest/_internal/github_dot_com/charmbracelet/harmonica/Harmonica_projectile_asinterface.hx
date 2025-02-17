package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
class Projectile_asInterface {
    @:keep
    @:tdfield
    public dynamic function acceleration():_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector return @:_0 __self__.value.acceleration();
    @:keep
    @:tdfield
    public dynamic function velocity():_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector return @:_0 __self__.value.velocity();
    @:keep
    @:tdfield
    public dynamic function position():_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point return @:_0 __self__.value.position();
    @:keep
    @:tdfield
    public dynamic function update():_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point return @:_0 __self__.value.update();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectilepointer.ProjectilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
