package stdgo._internal.go.ast;
function newIdent(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_ident.Ident((0 : stdgo._internal.go.token.Token_pos.Pos), _name?.__copy__(), null) : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    }
