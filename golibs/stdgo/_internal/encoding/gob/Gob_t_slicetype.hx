package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension) class T_sliceType {
    @:embedded
    public var commonType : stdgo._internal.encoding.gob.Gob_commontype.CommonType = ({} : stdgo._internal.encoding.gob.Gob_commontype.CommonType);
    public var elem : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
    public function new(?commonType:stdgo._internal.encoding.gob.Gob_commontype.CommonType, ?elem:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) {
        if (commonType != null) this.commonType = commonType;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _id(get, never) : () -> stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId;
    @:embedded
    @:embeddededffieldsffun
    public function get__id():() -> stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:check32 this.commonType._id;
    public var _name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__name():() -> stdgo.GoString return @:check32 this.commonType._name;
    public var _setId(get, never) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setId():stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId -> Void return @:check32 this.commonType._setId;
    public function __copy__() {
        return new T_sliceType(commonType, elem);
    }
}
