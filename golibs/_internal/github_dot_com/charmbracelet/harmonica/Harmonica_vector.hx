package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
@:structInit @:using(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector_static_extension.Vector_static_extension) class Vector {
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
        return new Vector(x, y, z);
    }
}
