package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
function newSpring(_deltaTime:stdgo.GoFloat64, _angularFrequency:stdgo.GoFloat64, _dampingRatio:stdgo.GoFloat64):_internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring {
        var _s = ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring);
        _angularFrequency = stdgo._internal.math.Math_max.max((0 : stdgo.GoFloat64), _angularFrequency);
        _dampingRatio = stdgo._internal.math.Math_max.max((0 : stdgo.GoFloat64), _dampingRatio);
        stdgo.Go.println(((_angularFrequency * (1000 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt), ((_internal.github_dot_com.charmbracelet.harmonica.Harmonica__epsilon._epsilon * (1000 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt));
        if ((_angularFrequency < _internal.github_dot_com.charmbracelet.harmonica.Harmonica__epsilon._epsilon : Bool)) {
            _s._posPosCoef = (1 : stdgo.GoFloat64);
            _s._posVelCoef = (0 : stdgo.GoFloat64);
            _s._velPosCoef = (0 : stdgo.GoFloat64);
            _s._velVelCoef = (1 : stdgo.GoFloat64);
            stdgo.Go.println(("here" : stdgo.GoString));
            return _s = _s?.__copy__();
        };
        if ((_dampingRatio > ((1 : stdgo.GoFloat64) + _internal.github_dot_com.charmbracelet.harmonica.Harmonica__epsilon._epsilon : stdgo.GoFloat64) : Bool)) {
            var __0 = (-_angularFrequency * _dampingRatio : stdgo.GoFloat64), __1 = (_angularFrequency * stdgo._internal.math.Math_sqrt.sqrt(((_dampingRatio * _dampingRatio : stdgo.GoFloat64) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64), __2 = (__0 - __1 : stdgo.GoFloat64), __3 = (__0 + __1 : stdgo.GoFloat64), __4 = stdgo._internal.math.Math_exp.exp((__2 * _deltaTime : stdgo.GoFloat64)), __5 = stdgo._internal.math.Math_exp.exp((__3 * _deltaTime : stdgo.GoFloat64)), __6 = ((1 : stdgo.GoFloat64) / (((2 : stdgo.GoFloat64) * __1 : stdgo.GoFloat64)) : stdgo.GoFloat64), __7 = (__4 * __6 : stdgo.GoFloat64), __8 = (__5 * __6 : stdgo.GoFloat64), __9 = (__2 * __7 : stdgo.GoFloat64), __10 = (__3 * __8 : stdgo.GoFloat64);
var _z2e2_Over_TwoZb = __10, _z1e1_Over_TwoZb = __9, _e2_Over_TwoZb = __8, _e1_Over_TwoZb = __7, _invTwoZb = __6, _e2 = __5, _e1 = __4, _z2 = __3, _z1 = __2, _zb = __1, _za = __0;
            _s._posPosCoef = (((_e1_Over_TwoZb * _z2 : stdgo.GoFloat64) - _z2e2_Over_TwoZb : stdgo.GoFloat64) + _e2 : stdgo.GoFloat64);
            _s._posVelCoef = (-_e1_Over_TwoZb + _e2_Over_TwoZb : stdgo.GoFloat64);
            _s._velPosCoef = ((((_z1e1_Over_TwoZb - _z2e2_Over_TwoZb : stdgo.GoFloat64) + _e2 : stdgo.GoFloat64)) * _z2 : stdgo.GoFloat64);
            _s._velVelCoef = (-_z1e1_Over_TwoZb + _z2e2_Over_TwoZb : stdgo.GoFloat64);
        } else if ((_dampingRatio < ((1 : stdgo.GoFloat64) - _internal.github_dot_com.charmbracelet.harmonica.Harmonica__epsilon._epsilon : stdgo.GoFloat64) : Bool)) {
            var __0 = (_angularFrequency * _dampingRatio : stdgo.GoFloat64), __1 = (_angularFrequency * stdgo._internal.math.Math_sqrt.sqrt(((1 : stdgo.GoFloat64) - (_dampingRatio * _dampingRatio : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64), __2 = stdgo._internal.math.Math_exp.exp((-__0 * _deltaTime : stdgo.GoFloat64)), __3 = stdgo._internal.math.Math_cos.cos((__1 * _deltaTime : stdgo.GoFloat64)), __4 = stdgo._internal.math.Math_sin.sin((__1 * _deltaTime : stdgo.GoFloat64)), __5 = ((1 : stdgo.GoFloat64) / __1 : stdgo.GoFloat64), __6 = (__2 * __4 : stdgo.GoFloat64), __7 = (__2 * __3 : stdgo.GoFloat64), __8 = (((__2 * __0 : stdgo.GoFloat64) * __4 : stdgo.GoFloat64) * __5 : stdgo.GoFloat64);
var _expOmegaZetaSin_Over_Alpha = __8, _expCos = __7, _expSin = __6, _invAlpha = __5, _sinTerm = __4, _cosTerm = __3, _expTerm = __2, _alpha = __1, _omegaZeta = __0;
            _s._posPosCoef = (_expCos + _expOmegaZetaSin_Over_Alpha : stdgo.GoFloat64);
            _s._posVelCoef = (_expSin * _invAlpha : stdgo.GoFloat64);
            _s._velPosCoef = ((-_expSin * _alpha : stdgo.GoFloat64) - (_omegaZeta * _expOmegaZetaSin_Over_Alpha : stdgo.GoFloat64) : stdgo.GoFloat64);
            _s._velVelCoef = (_expCos - _expOmegaZetaSin_Over_Alpha : stdgo.GoFloat64);
        } else {
            var __0 = stdgo._internal.math.Math_exp.exp((-_angularFrequency * _deltaTime : stdgo.GoFloat64)), __1 = (_deltaTime * __0 : stdgo.GoFloat64), __2 = (__1 * _angularFrequency : stdgo.GoFloat64);
var _timeExpFreq = __2, _timeExp = __1, _expTerm = __0;
            _s._posPosCoef = (_timeExpFreq + _expTerm : stdgo.GoFloat64);
            _s._posVelCoef = _timeExp;
            _s._velPosCoef = (-_angularFrequency * _timeExpFreq : stdgo.GoFloat64);
            _s._velVelCoef = (-_timeExpFreq + _expTerm : stdgo.GoFloat64);
        };
        stdgo.Go.println(((_s._velPosCoef * (1000 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt), ((_s._velPosCoef * (1000 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt), ((_s._posPosCoef * (1000 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt), ((_s._posVelCoef * (1000 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt));
        return _s = _s?.__copy__();
    }
