package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
@:structInit @:using(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring_static_extension.Spring_static_extension) class Spring {
    public var _posPosCoef : stdgo.GoFloat64 = 0;
    public var _posVelCoef : stdgo.GoFloat64 = 0;
    public var _velPosCoef : stdgo.GoFloat64 = 0;
    public var _velVelCoef : stdgo.GoFloat64 = 0;
    public function new(?_posPosCoef:stdgo.GoFloat64, ?_posVelCoef:stdgo.GoFloat64, ?_velPosCoef:stdgo.GoFloat64, ?_velVelCoef:stdgo.GoFloat64) {
        if (_posPosCoef != null) this._posPosCoef = _posPosCoef;
        if (_posVelCoef != null) this._posVelCoef = _posVelCoef;
        if (_velPosCoef != null) this._velPosCoef = _velPosCoef;
        if (_velVelCoef != null) this._velVelCoef = _velVelCoef;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Spring(_posPosCoef, _posVelCoef, _velPosCoef, _velVelCoef);
    }
}
