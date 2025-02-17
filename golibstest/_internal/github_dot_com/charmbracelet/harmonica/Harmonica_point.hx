package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
@:structInit @:using(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point_static_extension.Point_static_extension) class Point {
    public var x : stdgo.GoFloat64 = 0;
    public var y : stdgo.GoFloat64 = 0;
    public var z : stdgo.GoFloat64 = 0;
    public function new(?x:stdgo.GoFloat64, ?y:stdgo.GoFloat64, ?z:stdgo.GoFloat64) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y, z);
    }
}
