package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.CompositeLit_asInterface) class CompositeLit_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = _x;
        return ((@:checkr _x ?? throw "null pointer dereference").rbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference").type != null) {
            return (@:checkr _x ?? throw "null pointer dereference").type.pos();
        };
        return (@:checkr _x ?? throw "null pointer dereference").lbrace;
    }
}
