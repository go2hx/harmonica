package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.RangeStmt_asInterface) class RangeStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = _s;
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").for_;
    }
}
