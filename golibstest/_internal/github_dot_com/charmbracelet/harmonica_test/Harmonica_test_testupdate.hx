package _internal.github_dot_com.charmbracelet.harmonica_test;
function testUpdate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _projectile = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_newprojectile.newProjectile(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_fps.fPS((60 : stdgo.GoInt)), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector((5 : stdgo.GoFloat64), (5 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector((0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector));
        var _coordinates = (new stdgo.Slice<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point>(7, 7, ...[(new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((5 : stdgo.GoFloat64), (5 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((10 : stdgo.GoFloat64), (10 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((15 : stdgo.GoFloat64), (15 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((20 : stdgo.GoFloat64), (20 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((25 : stdgo.GoFloat64), (25 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((30 : stdgo.GoFloat64), (30 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((35 : stdgo.GoFloat64), (35 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point)])) : stdgo.Slice<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point>);
        for (__0 => _c in _coordinates) {
            var _pos:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point = ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (60 : stdgo.GoInt) : Bool)) {
                    _pos = @:check2r _projectile.update().__copy__();
                    _i++;
                };
            };
            var _pvel = (@:check2r _projectile.velocity()?.__copy__() : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector);
            if (((!_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pvel.x, (5 : stdgo.GoFloat64)) || !_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pvel.y, (5 : stdgo.GoFloat64)) : Bool) || !_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pvel.z, (0 : stdgo.GoFloat64)) : Bool)) {
                @:check2r _t.logf(("Want: (%.2f, %.2f, %.2f)" : stdgo.GoString), stdgo.Go.toInterface(_pvel.x), stdgo.Go.toInterface(_pvel.y), stdgo.Go.toInterface(_pvel.z));
                @:check2r _t.logf(("Want: (%.2f, %.2f, %.2f)" : stdgo.GoString), stdgo.Go.toInterface((5 : stdgo.GoFloat64)), stdgo.Go.toInterface((5 : stdgo.GoFloat64)), stdgo.Go.toInterface((0 : stdgo.GoFloat64)));
                @:check2r _t.fatal(stdgo.Go.toInterface(("velocity unexpected" : stdgo.GoString)));
            };
            if ((!_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pos.x, _c.x) || !_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pos.y, _c.y) : Bool)) {
                @:check2r _t.logf(("Want: (%.2f, %.2f)" : stdgo.GoString), stdgo.Go.toInterface(_c.x), stdgo.Go.toInterface(_c.y));
                @:check2r _t.logf(("Got:  (%.2f, %.2f)" : stdgo.GoString), stdgo.Go.toInterface(_pos.x), stdgo.Go.toInterface(_pos.y));
                @:check2r _t.fatal(stdgo.Go.toInterface(("coordinate unexpected" : stdgo.GoString)));
            };
        };
    }
