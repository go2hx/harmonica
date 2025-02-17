package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Context_asInterface) class Context_static_extension {
    @:keep
    @:tdfield
    static public function _getID( _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = _ctxt;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _ctxt ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _ctxt ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = ((@:checkr _ctxt ?? throw "null pointer dereference")._originIDs != null && (@:checkr _ctxt ?? throw "null pointer dereference")._originIDs.exists(_t) ? { _0 : (@:checkr _ctxt ?? throw "null pointer dereference")._originIDs[_t], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _id:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _id = (@:checkr _ctxt ?? throw "null pointer dereference")._nextID;
                (@:checkr _ctxt ?? throw "null pointer dereference")._originIDs[_t] = _id;
                (@:checkr _ctxt ?? throw "null pointer dereference")._nextID++;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _id;
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
                return (0 : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _update( _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _h:stdgo.GoString, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _inst:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = _ctxt;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            stdgo._internal.go.types.Types__assert._assert(_inst != null);
            @:check2 (@:checkr _ctxt ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _ctxt ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__0 => _e in ((@:checkr _ctxt ?? throw "null pointer dereference")._typeMap[_h] ?? (null : stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>))) {
                if (((_inst == null) || stdgo._internal.go.types.Types_identical.identical(_inst, _e._instance) : Bool)) {
                    {
                        final __ret__:stdgo._internal.go.types.Types_type_.Type_ = _e._instance;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if (false) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s and %s are not identical" : stdgo.GoString), stdgo.Go.toInterface(_inst), stdgo.Go.toInterface(_e._instance)));
                };
            };
            (@:checkr _ctxt ?? throw "null pointer dereference")._typeMap[_h] = (((@:checkr _ctxt ?? throw "null pointer dereference")._typeMap[_h] ?? (null : stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>)).__append__(({ _orig : _orig, _targs : _targs, _instance : _inst } : stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry)));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _inst;
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
                return (null : stdgo._internal.go.types.Types_type_.Type_);
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
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _lookup( _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _h:stdgo.GoString, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = _ctxt;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _ctxt ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _ctxt ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__0 => _e in ((@:checkr _ctxt ?? throw "null pointer dereference")._typeMap[_h] ?? (null : stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>))) {
                if (stdgo._internal.go.types.Types__identicalinstance._identicalInstance(_orig, _targs, _e._orig, _e._targs)) {
                    {
                        final __ret__:stdgo._internal.go.types.Types_type_.Type_ = _e._instance;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if (false) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("non-identical instances: (orig: %s, targs: %v) and %s" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_targs), stdgo.Go.toInterface(_e._instance)));
                };
            };
            {
                final __ret__:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo._internal.go.types.Types_type_.Type_);
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
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _instanceHash( _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo.GoString {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = _ctxt;
        stdgo._internal.go.types.Types__assert._assert((_ctxt != null && ((_ctxt : Dynamic).__nil__ == null || !(_ctxt : Dynamic).__nil__)));
        stdgo._internal.go.types.Types__assert._assert(_orig != null);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _h = stdgo._internal.go.types.Types__newtypehasher._newTypeHasher((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _ctxt);
        @:check2r _h._string(stdgo._internal.strconv.Strconv_itoa.itoa(@:check2r _ctxt._getID(_orig))?.__copy__());
        @:check2r _h._typ(_orig);
        if (((_targs.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _h._typeList(_targs);
        };
        return stdgo._internal.strings.Strings_replace.replace((@:check2 _buf.string() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString), ("#" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
    }
}
