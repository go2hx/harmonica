package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeSpec_asInterface) class TypeSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").type.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = _s;
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").name.pos();
    }
}
