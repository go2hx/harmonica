package stdgo._internal.encoding.gob;
function _decFloat64(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        _value.setFloat(stdgo._internal.encoding.gob.Gob__float64frombits._float64FromBits(@:check2r _state._decodeUint()));
    }
