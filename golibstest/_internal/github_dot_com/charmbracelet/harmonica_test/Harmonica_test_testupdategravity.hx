package _internal.github_dot_com.charmbracelet.harmonica_test;
function testUpdateGravity(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fps = (60 : stdgo.GoInt);
        var _projectile = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_newprojectile.newProjectile(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_fps.fPS(_fps), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector((5 : stdgo.GoFloat64), (5 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector), _internal.github_dot_com.charmbracelet.harmonica.Harmonica_terminalgravity.terminalGravity?.__copy__());
        var _coordinates = (new stdgo.Slice<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point>(7, 7, ...[(new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((5 : stdgo.GoFloat64), (9.82 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((10 : stdgo.GoFloat64), (29.46 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((15 : stdgo.GoFloat64), (58.9 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((20 : stdgo.GoFloat64), (98.15 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((25 : stdgo.GoFloat64), (147.22 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((30 : stdgo.GoFloat64), (206.09 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point), (new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((35 : stdgo.GoFloat64), (274.77 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)) : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point)])) : stdgo.Slice<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point>);
        for (__0 => _c in _coordinates) {
            var _pos:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point = ({} : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point);
            {
                var _f = (0 : stdgo.GoInt);
                while ((_f < _fps : Bool)) {
                    _pos = @:check2r _projectile.update().__copy__();
                    _f++;
                };
            };
            var _yacc = (@:check2r _projectile.acceleration().y : stdgo.GoFloat64);
            if (!_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_yacc, _internal.github_dot_com.charmbracelet.harmonica.Harmonica_terminalgravity.terminalGravity.y)) {
                @:check2r _t.logf(("Want: %.2f" : stdgo.GoString), stdgo.Go.toInterface(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_terminalgravity.terminalGravity.y));
                @:check2r _t.logf(("Got:  %.2f" : stdgo.GoString), stdgo.Go.toInterface(_yacc));
                @:check2r _t.fatal(stdgo.Go.toInterface(("Y acceleration unexpected" : stdgo.GoString)));
            };
            if ((!_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pos.x, _c.x) || !_internal.github_dot_com.charmbracelet.harmonica_test.Harmonica_test__equal._equal(_pos.y, _c.y) : Bool)) {
                @:check2r _t.logf(("Want: (%.2f, %.2f)" : stdgo.GoString), stdgo.Go.toInterface(_c.x), stdgo.Go.toInterface(_c.y));
                @:check2r _t.logf(("Got:  (%.2f, %.2f)" : stdgo.GoString), stdgo.Go.toInterface(_pos.x), stdgo.Go.toInterface(_pos.y));
                @:check2r _t.fatal(stdgo.Go.toInterface(("coordinate unexpected" : stdgo.GoString)));
            };
        };
    }
