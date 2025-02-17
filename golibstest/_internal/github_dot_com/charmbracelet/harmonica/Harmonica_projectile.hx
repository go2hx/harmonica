package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
@:structInit @:using(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile_static_extension.Projectile_static_extension) class Projectile {
    public var _pos : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point = ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point);
    public var _vel : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector = ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector);
    public var _acc : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector = ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector);
    public var _deltaTime : stdgo.GoFloat64 = 0;
    public function new(?_pos:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point, ?_vel:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector, ?_acc:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector, ?_deltaTime:stdgo.GoFloat64) {
        if (_pos != null) this._pos = _pos;
        if (_vel != null) this._vel = _vel;
        if (_acc != null) this._acc = _acc;
        if (_deltaTime != null) this._deltaTime = _deltaTime;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Projectile(_pos, _vel, _acc, _deltaTime);
    }
}
