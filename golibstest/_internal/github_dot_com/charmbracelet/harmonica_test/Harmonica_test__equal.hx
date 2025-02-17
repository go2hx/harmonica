package _internal.github_dot_com.charmbracelet.harmonica_test;
function _equal(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        return (stdgo._internal.math.Math_abs.abs((_a - _b : stdgo.GoFloat64)) <= (0.01 : stdgo.GoFloat64) : Bool);
    }
