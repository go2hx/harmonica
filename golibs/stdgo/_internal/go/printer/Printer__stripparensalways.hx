package stdgo._internal.go.printer;
function _stripParensAlways(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo._internal.go.printer.Printer__stripparensalways._stripParensAlways((@:checkr _x ?? throw "null pointer dereference").x);
            };
        };
        return _x;
    }
