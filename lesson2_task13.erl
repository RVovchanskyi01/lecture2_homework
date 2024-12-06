-module(lesson2_task13).
-export([decode/1]).

decode(List) ->
    decode(List, []).

decode([], Acc) ->
    lists:reverse(Acc);
decode([{Count, Elem} | T], Acc) ->
    decode(T, append(Count, Elem, Acc)).

append(0, _Elem, Acc) ->
    Acc;
append(Count, Elem, Acc) ->
    append(Count - 1, Elem, [Elem | Acc]).


