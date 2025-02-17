package stdgo._internal.go.parser;
function parseExprFrom(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.AnyInterface, _mode:stdgo._internal.go.parser.Parser_mode.Mode):{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _expr = (null : stdgo._internal.go.ast.Ast_expr.Expr), _err = (null : stdgo.Error);
        try {
            if ((_fset == null || (_fset : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("parser.ParseExprFrom: no token.FileSet provided (fset == nil)" : stdgo.GoString));
            };
            var __tmp__ = stdgo._internal.go.parser.Parser__readsource._readSource(_filename?.__copy__(), _src), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.go.ast.Ast_expr.Expr), _1 : _err };
                    _expr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _p:stdgo._internal.go.parser.Parser_t_parser.T_parser = ({} : stdgo._internal.go.parser.Parser_t_parser.T_parser);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.go.parser.Parser_t_bailout.T_bailout)) : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _1 : false };
                                }, _bail = __tmp__._0, _ok = __tmp__._1;
                                if (!_ok) {
                                    throw stdgo.Go.toInterface(_e);
                                } else if (_bail._msg != ((stdgo.Go.str() : stdgo.GoString))) {
                                    @:check2 _p._errors.add(@:check2r _p._file.position(_bail._pos)?.__copy__(), _bail._msg?.__copy__());
                                };
                            };
                        };
                        _p._errors.sort();
                        _err = _p._errors.err();
                    };
                    a();
                }) });
            };
            @:check2 _p._init(_fset, _filename?.__copy__(), _text, _mode);
            _expr = @:check2 _p._parseRhs();
            if (((_p._tok == (57 : stdgo._internal.go.token.Token_token.Token)) && (_p._lit == ("\n" : stdgo.GoString)) : Bool)) {
                @:check2 _p._next();
            };
            @:check2 _p._expect((1 : stdgo._internal.go.token.Token_token.Token));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _expr, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _expr, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _expr, _1 : _err };
            };
        };
    }
