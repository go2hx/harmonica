package stdgo._internal.go.printer;
function _diffPrec(_expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec:stdgo.GoInt):stdgo.GoInt {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), _1 : false };
        }, _x = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || (_prec != (@:checkr _x ?? throw "null pointer dereference").op.precedence()) : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
