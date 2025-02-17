package stdgo._internal.go.constant;
function _val(_lit:stdgo.GoString):stdgo._internal.go.constant.Constant_value.Value {
        if ((_lit.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.go.constant.Constant_makeunknown.makeUnknown();
        };
        {
            final __value__ = _lit;
            if (__value__ == (("?" : stdgo.GoString))) {
                return stdgo._internal.go.constant.Constant_makeunknown.makeUnknown();
            } else if (__value__ == (("true" : stdgo.GoString))) {
                return stdgo._internal.go.constant.Constant_makebool.makeBool(true);
            } else if (__value__ == (("false" : stdgo.GoString))) {
                return stdgo._internal.go.constant.Constant_makebool.makeBool(false);
            };
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_lit?.__copy__(), ("/" : stdgo.GoString)), _as:stdgo.GoString = __tmp__._0, _bs:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var _a = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_as?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                var _b = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_bs?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                return stdgo._internal.go.constant.Constant_binaryop.binaryOp(_a, (15 : stdgo._internal.go.token.Token_token.Token), _b);
            };
        };
        var _tok = (5 : stdgo._internal.go.token.Token_token.Token);
        {
            var __0 = (_lit[(0 : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_lit[((_lit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _last = __1, _first = __0;
            if (((_first == (34 : stdgo.GoUInt8)) || (_first == (96 : stdgo.GoUInt8)) : Bool)) {
                _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                _lit = stdgo._internal.strings.Strings_replaceall.replaceAll(_lit?.__copy__(), ("_" : stdgo.GoString), (" " : stdgo.GoString))?.__copy__();
            } else if (_first == ((39 : stdgo.GoUInt8))) {
                _tok = (8 : stdgo._internal.go.token.Token_token.Token);
            } else if (_last == ((105 : stdgo.GoUInt8))) {
                _tok = (7 : stdgo._internal.go.token.Token_token.Token);
            } else {
                if ((!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lit?.__copy__(), ("0x" : stdgo.GoString)) && stdgo._internal.strings.Strings_containsany.containsAny(_lit?.__copy__(), ("./Ee" : stdgo.GoString)) : Bool)) {
                    _tok = (6 : stdgo._internal.go.token.Token_token.Token);
                };
            };
        };
        return stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_lit?.__copy__(), _tok, (0u32 : stdgo.GoUInt));
    }
