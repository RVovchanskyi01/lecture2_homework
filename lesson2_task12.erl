-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(List) ->
    decode_modified(List, []).

decode_modified([], Acc) ->
    lists:reverse(Acc);
decode_modified([{Count, Elem} | T], Acc) ->
    decode_modified(T, append(Count, Elem, Acc));
decode_modified([H | T], Acc) ->
    decode_modified(T, [H | Acc]).

append(0, _Elem, Acc) ->
    Acc;
append(Count, Elem, Acc) ->
    append(Count - 1, Elem, [Elem | Acc]).


