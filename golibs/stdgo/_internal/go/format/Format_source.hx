package stdgo._internal.go.format;
function source(_src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.format.Format__parse._parse(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _src, true), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _sourceAdj:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _indentAdj:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (_sourceAdj == null) {
            stdgo._internal.go.ast.Ast_sortimports.sortImports(_fset, _file);
        };
        return stdgo._internal.go.format.Format__format._format(_fset, _file, _sourceAdj, _indentAdj, _src, stdgo._internal.go.format.Format__config._config?.__copy__());
    }
