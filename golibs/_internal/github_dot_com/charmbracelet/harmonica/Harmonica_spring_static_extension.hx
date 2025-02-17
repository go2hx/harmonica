package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
@:keep @:allow(_internal.github_dot_com.charmbracelet.harmonica.Harmonica.Spring_asInterface) class Spring_static_extension {
    @:keep
    @:tdfield
    static public function update( _s:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring, _pos:stdgo.GoFloat64, _vel:stdgo.GoFloat64, _equilibriumPos:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        @:recv var _s:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring = _s?.__copy__();
        var _newPos = (0 : stdgo.GoFloat64), _newVel = (0 : stdgo.GoFloat64);
        var _oldPos = (_pos - _equilibriumPos : stdgo.GoFloat64);
        var _oldVel = (_vel : stdgo.GoFloat64);
        _newPos = (((_oldPos * _s._posPosCoef : stdgo.GoFloat64) + (_oldVel * _s._posVelCoef : stdgo.GoFloat64) : stdgo.GoFloat64) + _equilibriumPos : stdgo.GoFloat64);
        _newVel = ((_oldPos * _s._velPosCoef : stdgo.GoFloat64) + (_oldVel * _s._velVelCoef : stdgo.GoFloat64) : stdgo.GoFloat64);
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : _newPos, _1 : _newVel };
            _newPos = __tmp__._0;
            _newVel = __tmp__._1;
            __tmp__;
        };
    }
}
