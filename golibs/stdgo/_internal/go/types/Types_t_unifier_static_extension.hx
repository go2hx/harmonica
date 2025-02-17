package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_unifier_asInterface) class T_unifier_static_extension {
    @:keep
    @:tdfield
    static public function _nify( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _mode:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _result = false;
        try {
            (@:checkr _u ?? throw "null pointer dereference")._depth++;
            if (false) {
                @:check2r _u._tracef(("%s ≡ %s\t// %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if ((false && !_result : Bool)) {
                            @:check2r _u._tracef(("%s ≢ %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                        };
                        (@:checkr _u ?? throw "null pointer dereference")._depth--;
                    };
                    a();
                }) });
            };
            if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
                {
                    final __ret__:Bool = _result = true;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((@:checkr _u ?? throw "null pointer dereference")._depth > (50 : stdgo.GoInt) : Bool)) {
                if (false) {
                    @:check2r _u._tracef(("depth %d >= %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _u ?? throw "null pointer dereference")._depth), stdgo.Go.toInterface((50 : stdgo.GoInt)));
                };
                if (true) {
                    throw stdgo.Go.toInterface(("unification reached recursion depth limit" : stdgo.GoString));
                };
                {
                    final __ret__:Bool = _result = false;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if ((_ok || (@:check2r _u._asTypeParam(_y) != null && ((@:check2r _u._asTypeParam(_y) : Dynamic).__nil__ == null || !(@:check2r _u._asTypeParam(_y) : Dynamic).__nil__)) : Bool)) {
                    if (false) {
                        @:check2r _u._tracef(("%s ≡ %s\t// swap" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_x));
                    };
                    {
                        final __tmp__0 = _y;
                        final __tmp__1 = _x;
                        _x = __tmp__0;
                        _y = __tmp__1;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, _ny = __tmp__._0, __1 = __tmp__._1;
                if (((((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) && (_ny != null && ((_ny : Dynamic).__nil__ == null || !(_ny : Dynamic).__nil__)) : Bool) && stdgo._internal.go.types.Types__istypelit._isTypeLit(_x) : Bool) && !(((@:checkr _u ?? throw "null pointer dereference")._enableInterfaceInference && stdgo._internal.go.types.Types_isinterface.isInterface(_x) : Bool)) : Bool)) {
                    if (false) {
                        @:check2r _u._tracef(("%s ≡ under %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_ny)));
                    };
                    _y = @:check2r _ny._under();
                    stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(_y));
                    if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
                        {
                            final __ret__:Bool = _result = true;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                var __0 = @:check2r _u._asTypeParam(_x), __1 = @:check2r _u._asTypeParam(_y);
var _py = __1, _px = __0;
                if (((_px != null && ((_px : Dynamic).__nil__ == null || !(_px : Dynamic).__nil__)) && (_py != null && ((_py : Dynamic).__nil__ == null || !(_py : Dynamic).__nil__)) : Bool)) {
                    if (@:check2r _u._join(_px, _py)) {
                        {
                            final __ret__:Bool = _result = true;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __ret__:Bool = _result = @:check2r _u._nify(@:check2r _u._at(_px), @:check2r _u._at(_py), _mode, _p);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if ((_px != null && ((_px : Dynamic).__nil__ == null || !(_px : Dynamic).__nil__))) {
                    {
                        var _x = (@:check2r _u._at(_px) : stdgo._internal.go.types.Types_type_.Type_);
                        if (_x != null) {
                            if (@:check2r _u._nify(_x, _y, _mode, _p)) {
                                var _xi = stdgo._internal.go.types.Types__asinterface._asInterface(_x);
                                var _yi = stdgo._internal.go.types.Types__asinterface._asInterface(_y);
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                                }, __2 = __tmp__._0, _xn = __tmp__._1;
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                                }, __3 = __tmp__._0, _yn = __tmp__._1;
                                if (((_xi != null && ((_xi : Dynamic).__nil__ == null || !(_xi : Dynamic).__nil__)) && (_yi != null && ((_yi : Dynamic).__nil__ == null || !(_yi : Dynamic).__nil__)) : Bool)) {
                                    if ((_xn && _yn : Bool)) {
                                        {
                                            final __ret__:Bool = _result = stdgo._internal.go.types.Types_identical.identical(_x, _y);
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    if ((@:check2r _xi._typeSet()._methods.length) != ((@:check2r _yi._typeSet()._methods.length))) {
                                        {
                                            final __ret__:Bool = _result = false;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                } else if (((_xi != null && ((_xi : Dynamic).__nil__ == null || !(_xi : Dynamic).__nil__)) || (_yi != null && ((_yi : Dynamic).__nil__ == null || !(_yi : Dynamic).__nil__)) : Bool)) {
                                    {
                                        final __ret__:Bool = _result = false;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                                if ((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                                    if (_xn) {} else if (_yn) {
                                        @:check2r _u._set(_px, _y);
                                    } else {
                                        {
                                            var __tmp__ = try {
                                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_y)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                                            } catch(_) {
                                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                                            }, _yc = __tmp__._0, __4 = __tmp__._1;
                                            if (((_yc != null && ((_yc : Dynamic).__nil__ == null || !(_yc : Dynamic).__nil__)) && ((@:checkr _yc ?? throw "null pointer dereference")._dir != (0 : stdgo._internal.go.types.Types_chandir.ChanDir)) : Bool)) {
                                                @:check2r _u._set(_px, _y);
                                            };
                                        };
                                    };
                                };
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            {
                                final __ret__:Bool = _result = false;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    @:check2r _u._set(_px, _y);
                    {
                        final __ret__:Bool = _result = true;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            stdgo._internal.go.types.Types__assert._assert(stdgo.Go.toInterface(_x) != (stdgo.Go.toInterface(_y)));
            var _emode = (_mode : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode);
            if ((_mode & (1u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) != ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                _emode = (_emode | ((2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode);
            };
            if (((@:checkr _u ?? throw "null pointer dereference")._enableInterfaceInference && ((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == (0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) : Bool)) {
                var _xi = stdgo._internal.go.types.Types__asinterface._asInterface(_x);
                var _yi = stdgo._internal.go.types.Types__asinterface._asInterface(_y);
                if (((_xi != null && ((_xi : Dynamic).__nil__ == null || !(_xi : Dynamic).__nil__)) && (_yi != null && ((_yi : Dynamic).__nil__ == null || !(_yi : Dynamic).__nil__)) : Bool)) {
                    var _xset = @:check2r _xi._typeSet();
                    var _yset = @:check2r _yi._typeSet();
                    if ((@:checkr _xset ?? throw "null pointer dereference")._comparable != ((@:checkr _yset ?? throw "null pointer dereference")._comparable)) {
                        {
                            final __ret__:Bool = _result = false;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    if (!(@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms)) {
                        {
                            final __ret__:Bool = _result = false;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _q = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair(_xi, _yi, _p) : stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair)) : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
                    while ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                        if (@:check2r _p._identical(_q)) {
                            {
                                final __ret__:Bool = _result = true;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        _p = (@:checkr _p ?? throw "null pointer dereference")._prev;
                    };
                    var _xmethods = (@:checkr _xset ?? throw "null pointer dereference")._methods;
                    var _ymethods = (@:checkr _yset ?? throw "null pointer dereference")._methods;
                    if (((_xmethods.length) > (_ymethods.length) : Bool)) {
                        {
                            final __tmp__0 = _ymethods;
                            final __tmp__1 = _xmethods;
                            _xmethods = __tmp__0;
                            _ymethods = __tmp__1;
                        };
                    };
                    var _ymap = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                    for (__18 => _ym in _ymethods) {
                        _ymap[@:check2r _ym.id()] = _ym;
                    };
                    for (__19 => _xm in _xmethods) {
                        {
                            var _ym = (_ymap[@:check2r _xm.id()] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>));
                            if (((_ym == null || (_ym : Dynamic).__nil__) || !@:check2r _u._nify((@:checkr _xm ?? throw "null pointer dereference")._object._typ, (@:checkr _ym ?? throw "null pointer dereference")._object._typ, (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _p) : Bool)) {
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    {
                        final __ret__:Bool = _result = true;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if ((_yi != null && ((_yi : Dynamic).__nil__ == null || !(_yi : Dynamic).__nil__))) {
                    _xi = _yi;
                    _y = _x;
                };
                if ((_xi != null && ((_xi : Dynamic).__nil__ == null || !(_xi : Dynamic).__nil__))) {
                    var _xmethods = @:check2r _xi._typeSet()._methods;
                    for (__10 => _xm in _xmethods) {
                        var __tmp__ = stdgo._internal.go.types.Types_lookupfieldormethod.lookupFieldOrMethod(_y, false, (@:checkr _xm ?? throw "null pointer dereference")._object._pkg, (@:checkr _xm ?? throw "null pointer dereference")._object._name?.__copy__()), _obj:stdgo._internal.go.types.Types_object.Object = __tmp__._0, __11:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __12:Bool = __tmp__._2;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : false };
                            }, _ym = __tmp__._0, __13 = __tmp__._1;
                            if (((_ym == null || (_ym : Dynamic).__nil__) || !@:check2r _u._nify((@:checkr _xm ?? throw "null pointer dereference")._object._typ, (@:checkr _ym ?? throw "null pointer dereference")._object._typ, (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _p) : Bool)) {
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    {
                        final __ret__:Bool = _result = true;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_y)) {
                if (false) {
                    @:check2r _u._tracef(("%s ≡ %s\t// swap" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_x));
                };
                {
                    final __tmp__0 = _y;
                    final __tmp__1 = _x;
                    _x = __tmp__0;
                    _y = __tmp__1;
                };
            };
            {
                final __type__ = _x;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = (@:checkr _x ?? throw "null pointer dereference")._kind == ((@:checkr _y ?? throw "null pointer dereference")._kind);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = ((((((@:checkr _x ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _y ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._len == (@:checkr _y ?? throw "null pointer dereference")._len) : Bool)) && @:check2r _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = @:check2r _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            if (@:check2r _x.numFields() == (@:check2r _y.numFields())) {
                                for (_i => _f in (@:checkr _x ?? throw "null pointer dereference")._fields) {
                                    var _g = (@:checkr _y ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)];
                                    if (((((@:checkr _f ?? throw "null pointer dereference")._embedded != ((@:checkr _g ?? throw "null pointer dereference")._embedded) || @:check2r _x.tag(_i) != (@:check2r _y.tag(_i)) : Bool) || !@:check2r _f._sameId((@:checkr _g ?? throw "null pointer dereference")._object._pkg, (@:checkr _g ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool) || !@:check2r _u._nify((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, _emode, _p) : Bool)) {
                                        {
                                            final __ret__:Bool = _result = false;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = @:check2r _u._nify((@:checkr _x ?? throw "null pointer dereference")._base, (@:checkr _y ?? throw "null pointer dereference")._base, _emode, _p);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            if (@:check2r _x.len() == (@:check2r _y.len())) {
                                if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                                    for (_i => _v in (@:checkr _x ?? throw "null pointer dereference")._vars) {
                                        var _w = (@:checkr _y ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)];
                                        if (!@:check2r _u._nify((@:checkr _v ?? throw "null pointer dereference")._object._typ, (@:checkr _w ?? throw "null pointer dereference")._object._typ, _mode, _p)) {
                                            {
                                                final __ret__:Bool = _result = false;
                                                for (defer in __deferstack__) {
                                                    if (defer.ran) continue;
                                                    defer.ran = true;
                                                    defer.f();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                };
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = (((@:checkr _x ?? throw "null pointer dereference")._variadic == ((@:checkr _y ?? throw "null pointer dereference")._variadic) && @:check2r _u._nify(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._params), stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._params), _emode, _p) : Bool) && @:check2r _u._nify(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._results), stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._results), _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                    stdgo._internal.go.types.Types__assert._assert((!(@:checkr _u ?? throw "null pointer dereference")._enableInterfaceInference || ((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) != (0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) : Bool));
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _xset = @:check2r _x._typeSet();
                            var _yset = @:check2r _y._typeSet();
                            if ((@:checkr _xset ?? throw "null pointer dereference")._comparable != ((@:checkr _yset ?? throw "null pointer dereference")._comparable)) {
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            if (!(@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms)) {
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            var _a = (@:checkr _xset ?? throw "null pointer dereference")._methods;
                            var _b = (@:checkr _yset ?? throw "null pointer dereference")._methods;
                            if ((_a.length) == ((_b.length))) {
                                var _q = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair(_x, _y, _p) : stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair)) : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
                                while ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                                    if (@:check2r _p._identical(_q)) {
                                        {
                                            final __ret__:Bool = _result = true;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    _p = (@:checkr _p ?? throw "null pointer dereference")._prev;
                                };
                                if (false) {
                                    stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_a);
                                    stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_b);
                                };
                                for (_i => _f in _a) {
                                    var _g = _b[(_i : stdgo.GoInt)];
                                    if (((@:check2r _f.id() != @:check2r _g.id()) || !@:check2r _u._nify((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _q) : Bool)) {
                                        {
                                            final __ret__:Bool = _result = false;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>)) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = (@:check2r _u._nify((@:checkr _x ?? throw "null pointer dereference")._key, (@:checkr _y ?? throw "null pointer dereference")._key, _emode, _p) && @:check2r _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            {
                                final __ret__:Bool = _result = (((((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == (0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) || ((@:checkr _x ?? throw "null pointer dereference")._dir == (@:checkr _y ?? throw "null pointer dereference")._dir) : Bool)) && @:check2r _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _xargs = @:check2r @:check2r _x.typeArgs()._list();
                            var _yargs = @:check2r @:check2r _y.typeArgs()._list();
                            if ((_xargs.length) != ((_yargs.length))) {
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            for (_i => _xarg in _xargs) {
                                if (!@:check2r _u._nify(_xarg, _yargs[(_i : stdgo.GoInt)], _mode, _p)) {
                                    {
                                        final __ret__:Bool = _result = false;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                            {
                                final __ret__:Bool = _result = stdgo._internal.go.types.Types__indenticalorigin._indenticalOrigin(_x, _y);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value;
                    if (false) {
                        stdgo._internal.go.types.Types__assert._assert((@:check2r _u._asTypeParam(stdgo.Go.asInterface(_x)) == null || (@:check2r _u._asTypeParam(stdgo.Go.asInterface(_x)) : Dynamic).__nil__));
                    };
                    if (true) {
                        {
                            var _cx = (stdgo._internal.go.types.Types__coretype._coreType(stdgo.Go.asInterface(_x)) : stdgo._internal.go.types.Types_type_.Type_);
                            if (_cx != null) {
                                if (false) {
                                    @:check2r _u._tracef(("core %s ≡ %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_y));
                                };
                                {
                                    final __ret__:Bool = _result = @:check2r _u._nify(_cx, _y, (1u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _p);
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (__type__ == null) {
                    var _x:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                } else {
                    var _x:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    throw stdgo.Go.toInterface(stdgo._internal.go.types.Types__sprintf._sprintf(null, null, true, ("u.nify(%s, %s, %d)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode))));
                };
            };
            {
                final __ret__:Bool = _result = false;
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
                return _result;
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
                return _result;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _inferred( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _list = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_tparams.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        for (_i => _x in _tparams) {
            _list[(_i : stdgo.GoInt)] = @:check2r _u._at(_x);
        };
        return _list;
    }
    @:keep
    @:tdfield
    static public function _unknowns( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _n = (0 : stdgo.GoInt);
        for (__0 => _h in (@:checkr _u ?? throw "null pointer dereference")._handles) {
            if ((_h : stdgo._internal.go.types.Types_type_.Type_) == null) {
                _n++;
            };
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _set( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _t:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        stdgo._internal.go.types.Types__assert._assert(_t != null);
        if (false) {
            @:check2r _u._tracef(("%s ➞ %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_t));
        };
        {
            var __tmp__ = _t;
            var x = ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>) : stdgo._internal.go.types.Types_type_.Type_);
            x.string = __tmp__.string;
            x.underlying = __tmp__.underlying;
        };
    }
    @:keep
    @:tdfield
    static public function _at( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        return ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>) : stdgo._internal.go.types.Types_type_.Type_);
    }
    @:keep
    @:tdfield
    static public function _setHandle( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _h:stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>):Void {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _hx = ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>));
        stdgo._internal.go.types.Types__assert._assert((_hx != null && ((_hx : Dynamic).__nil__ == null || !(_hx : Dynamic).__nil__)));
        for (_y => _hy in (@:checkr _u ?? throw "null pointer dereference")._handles) {
            if (stdgo.Go.toInterface(_hy) == (stdgo.Go.toInterface(_hx))) {
                (@:checkr _u ?? throw "null pointer dereference")._handles[_y] = _h;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _asTypeParam( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _x = __tmp__._0, __0 = __tmp__._1;
            if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                {
                    var __tmp__ = ((@:checkr _u ?? throw "null pointer dereference")._handles != null && (@:checkr _u ?? throw "null pointer dereference")._handles.exists(_x) ? { _0 : (@:checkr _u ?? throw "null pointer dereference")._handles[_x], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>), _1 : false }), __1:stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (_found) {
                        return _x;
                    };
                };
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _join( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _y:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        if (false) {
            @:check2r _u._tracef(("%s ⇄ %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        {
            var __0 = ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>)), __1 = ((@:checkr _u ?? throw "null pointer dereference")._handles[_y] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>));
var _hy = __1, _hx = __0;
            if (stdgo.Go.toInterface(_hx) == (stdgo.Go.toInterface(_hy))) {} else if ((((_hx : stdgo._internal.go.types.Types_type_.Type_) != null) && ((_hy : stdgo._internal.go.types.Types_type_.Type_) != null) : Bool)) {
                return false;
            } else if ((_hx : stdgo._internal.go.types.Types_type_.Type_) != null) {
                @:check2r _u._setHandle(_y, _hx);
            } else {
                @:check2r _u._setHandle(_x, _hy);
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function string( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _tparams = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(((@:checkr _u ?? throw "null pointer dereference")._handles.length : stdgo.GoInt).toBasic(), 0) : stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById);
        var _i = (0 : stdgo.GoInt);
        for (_tpar => _ in (@:checkr _u ?? throw "null pointer dereference")._handles) {
            _tparams[(_i : stdgo.GoInt)] = _tpar;
            _i++;
        };
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_tparams));
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), null);
        @:check2r _w._byte((91 : stdgo.GoUInt8));
        for (_i => _x in _tparams) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _w._string((", " : stdgo.GoString));
            };
            @:check2r _w._typ(stdgo.Go.asInterface(_x));
            @:check2r _w._string((": " : stdgo.GoString));
            @:check2r _w._typ(@:check2r _u._at(_x));
        };
        @:check2r _w._byte((93 : stdgo.GoUInt8));
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _tracef( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.strings.Strings_repeat.repeat((".  " : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._depth) + stdgo._internal.go.types.Types__sprintf._sprintf(null, null, true, _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString)));
    }
    @:keep
    @:tdfield
    static public function _unify( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _mode:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        return @:check2r _u._nify(_x, _y, _mode, null);
    }
}
