package stdgo._internal.go.constant;
function _eql(_x:stdgo._internal.go.constant.Constant_value.Value, _y:stdgo._internal.go.constant.Constant_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal)) : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal), _1 : false };
        }, __1 = __tmp__._0, _ux = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal)) : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal), _1 : false };
        }, __2 = __tmp__._0, _uy = __tmp__._1;
        if ((_ux || _uy : Bool)) {
            return _ux == (_uy);
        };
        return stdgo._internal.go.constant.Constant_compare.compare(_x, (39 : stdgo._internal.go.token.Token_token.Token), _y);
    }
