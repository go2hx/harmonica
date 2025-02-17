package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
function fPS(_n:stdgo.GoInt):stdgo.GoFloat64 {
        return ((1000000000i64 : stdgo._internal.time.Time_duration.Duration) / (_n : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration).seconds();
    }
