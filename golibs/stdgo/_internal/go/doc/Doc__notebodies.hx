package stdgo._internal.go.doc;
function _noteBodies(_notes:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>):stdgo.Slice<stdgo.GoString> {
        var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _n in _notes) {
            _list = (_list.__append__((@:checkr _n ?? throw "null pointer dereference").body?.__copy__()));
        };
        return _list;
    }
