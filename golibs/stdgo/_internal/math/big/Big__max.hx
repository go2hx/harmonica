package stdgo._internal.math.big;
function _max(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((_x > _y : Bool)) {
            return _x;
        };
        return _y;
    }
