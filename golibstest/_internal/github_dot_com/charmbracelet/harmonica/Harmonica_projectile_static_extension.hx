package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
@:keep @:allow(_internal.github_dot_com.charmbracelet.harmonica.Harmonica.Projectile_asInterface) class Projectile_static_extension {
    @:keep
    @:tdfield
    static public function acceleration( _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>):_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._acc?.__copy__();
    }
    @:keep
    @:tdfield
    static public function velocity( _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>):_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._vel?.__copy__();
    }
    @:keep
    @:tdfield
    static public function position( _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>):_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
    }
    @:keep
    @:tdfield
    static public function update( _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>):_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._pos.x = ((@:checkr _p ?? throw "null pointer dereference")._pos.x + (((@:checkr _p ?? throw "null pointer dereference")._vel.x * (@:checkr _p ?? throw "null pointer dereference")._deltaTime : stdgo.GoFloat64)) : stdgo.GoFloat64);
        (@:checkr _p ?? throw "null pointer dereference")._pos.y = ((@:checkr _p ?? throw "null pointer dereference")._pos.y + (((@:checkr _p ?? throw "null pointer dereference")._vel.y * (@:checkr _p ?? throw "null pointer dereference")._deltaTime : stdgo.GoFloat64)) : stdgo.GoFloat64);
        (@:checkr _p ?? throw "null pointer dereference")._pos.z = ((@:checkr _p ?? throw "null pointer dereference")._pos.z + (((@:checkr _p ?? throw "null pointer dereference")._vel.z * (@:checkr _p ?? throw "null pointer dereference")._deltaTime : stdgo.GoFloat64)) : stdgo.GoFloat64);
        (@:checkr _p ?? throw "null pointer dereference")._vel.x = ((@:checkr _p ?? throw "null pointer dereference")._vel.x + (((@:checkr _p ?? throw "null pointer dereference")._acc.x * (@:checkr _p ?? throw "null pointer dereference")._deltaTime : stdgo.GoFloat64)) : stdgo.GoFloat64);
        (@:checkr _p ?? throw "null pointer dereference")._vel.y = ((@:checkr _p ?? throw "null pointer dereference")._vel.y + (((@:checkr _p ?? throw "null pointer dereference")._acc.y * (@:checkr _p ?? throw "null pointer dereference")._deltaTime : stdgo.GoFloat64)) : stdgo.GoFloat64);
        (@:checkr _p ?? throw "null pointer dereference")._vel.z = ((@:checkr _p ?? throw "null pointer dereference")._vel.z + (((@:checkr _p ?? throw "null pointer dereference")._acc.z * (@:checkr _p ?? throw "null pointer dereference")._deltaTime : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
    }
}
