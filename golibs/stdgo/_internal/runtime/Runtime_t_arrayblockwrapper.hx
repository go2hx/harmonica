package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_arrayblockwrapper_static_extension.T_arrayBlockWrapper_static_extension) class T_arrayBlockWrapper<T_> {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_arrayBlockWrapper();
    }
}
