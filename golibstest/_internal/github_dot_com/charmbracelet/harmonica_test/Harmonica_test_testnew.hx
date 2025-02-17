package _internal.github_dot_com.charmbracelet.harmonica_test;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = (8 : stdgo.GoInt);
        var _y = (20 : stdgo.GoInt);
        var _z = (0 : stdgo.GoInt);
        var _projectile = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_newprojectile.newProjectile(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_fps.fPS((60 : stdgo.GoInt)), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((_x : stdgo.GoFloat64), (_y : stdgo.GoFloat64), (_z : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector((0 : stdgo.GoFloat64), (9.81 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector));
        var _pos = (@:check2r _projectile.update()?.__copy__() : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point);
        if (_x != ((_pos.x : stdgo.GoInt))) {
            @:check2r _t.logf(("Want: %d, Got: %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoInt)), stdgo.Go.toInterface((_pos.x : stdgo.GoInt)));
            @:check2r _t.fatal(stdgo.Go.toInterface(("x coordinate unexpected" : stdgo.GoString)));
        };
        if (_y != ((_pos.y : stdgo.GoInt))) {
            @:check2r _t.logf(("Want: %d, Got: %d" : stdgo.GoString), stdgo.Go.toInterface((_y : stdgo.GoInt)), stdgo.Go.toInterface((_pos.y : stdgo.GoInt)));
            @:check2r _t.fatal(stdgo.Go.toInterface(("y coordinate unexpected" : stdgo.GoString)));
        };
    }
