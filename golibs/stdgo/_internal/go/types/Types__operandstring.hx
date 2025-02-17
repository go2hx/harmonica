package stdgo._internal.go.types;
function _operandString(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        if ((((@:checkr _x ?? throw "null pointer dereference")._mode == (7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) && (stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((25 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool)) {
            return ("nil" : stdgo.GoString);
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _expr:stdgo.GoString = ("" : stdgo.GoString);
        if ((@:checkr _x ?? throw "null pointer dereference")._expr != null) {
            _expr = stdgo._internal.go.types.Types_exprstring.exprString((@:checkr _x ?? throw "null pointer dereference")._expr)?.__copy__();
        } else {
            {
                final __value__ = (@:checkr _x ?? throw "null pointer dereference")._mode;
                if (__value__ == ((2 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode))) {
                    _expr = stdgo._internal.go.types.Types__predeclaredfuncs._predeclaredFuncs[((@:checkr _x ?? throw "null pointer dereference")._id : stdgo.GoInt)]._name?.__copy__();
                } else if (__value__ == ((3 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode))) {
                    _expr = stdgo._internal.go.types.Types_typestring.typeString((@:checkr _x ?? throw "null pointer dereference")._typ, _qf)?.__copy__();
                } else if (__value__ == ((4 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode))) {
                    _expr = ((@:checkr _x ?? throw "null pointer dereference")._val.string() : stdgo.GoString)?.__copy__();
                };
            };
        };
        if (_expr != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2 _buf.writeString(_expr?.__copy__());
            @:check2 _buf.writeString((" (" : stdgo.GoString));
        };
        var _hasType = (false : Bool);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _x ?? throw "null pointer dereference")._mode;
                    if (__value__ == ((0 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((1 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((2 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((3 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode))) {
                        break;
                    } else {
                        if ((@:checkr _x ?? throw "null pointer dereference")._typ != null) {
                            if (stdgo._internal.go.types.Types__isuntyped._isUntyped((@:checkr _x ?? throw "null pointer dereference")._typ)) {
                                @:check2 _buf.writeString((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) ?? throw "null pointer dereference")._name?.__copy__());
                                @:check2 _buf.writeByte((32 : stdgo.GoUInt8));
                                break;
                            };
                            _hasType = true;
                        };
                    };
                };
                break;
            };
        };
        @:check2 _buf.writeString(stdgo._internal.go.types.Types__operandmodestring._operandModeString[((@:checkr _x ?? throw "null pointer dereference")._mode : stdgo.GoInt)]?.__copy__());
        if ((@:checkr _x ?? throw "null pointer dereference")._mode == ((4 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode))) {
            {
                var _s = (((@:checkr _x ?? throw "null pointer dereference")._val.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_expr)) {
                    @:check2 _buf.writeByte((32 : stdgo.GoUInt8));
                    @:check2 _buf.writeString(_s?.__copy__());
                };
            };
        };
        if (_hasType) {
            if (stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) != (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
                var _intro:stdgo.GoString = ("" : stdgo.GoString);
                if (stdgo._internal.go.types.Types__isgeneric._isGeneric((@:checkr _x ?? throw "null pointer dereference")._typ)) {
                    _intro = (" of generic type " : stdgo.GoString);
                } else {
                    _intro = (" of type " : stdgo.GoString);
                };
                @:check2 _buf.writeString(_intro?.__copy__());
                stdgo._internal.go.types.Types_writetype.writeType((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (@:checkr _x ?? throw "null pointer dereference")._typ, _qf);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                    }, _tpar = __tmp__._0, __0 = __tmp__._1;
                    if ((_tpar != null && ((_tpar : Dynamic).__nil__ == null || !(_tpar : Dynamic).__nil__))) {
                        @:check2 _buf.writeString((" constrained by " : stdgo.GoString));
                        stdgo._internal.go.types.Types_writetype.writeType((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (@:checkr _tpar ?? throw "null pointer dereference")._bound, _qf);
                        if (stdgo._internal.go.types.Types__hasemptytypeset._hasEmptyTypeset(stdgo.Go.asInterface(_tpar))) {
                            @:check2 _buf.writeString((" with empty type set" : stdgo.GoString));
                        };
                    };
                };
            } else {
                @:check2 _buf.writeString((" with invalid type" : stdgo.GoString));
            };
        };
        if (_expr != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2 _buf.writeByte((41 : stdgo.GoUInt8));
        };
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
