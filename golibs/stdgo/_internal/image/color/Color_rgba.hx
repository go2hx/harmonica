package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_rgba_static_extension.RGBA_static_extension) class RGBA {
    public var r : stdgo.GoUInt8 = 0;
    public var g : stdgo.GoUInt8 = 0;
    public var b : stdgo.GoUInt8 = 0;
    public var a : stdgo.GoUInt8 = 0;
    public function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RGBA(r, g, b, a);
    }
}
