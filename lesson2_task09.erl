-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, [], []).

pack([], [], Acc) ->
    lists:reverse(Acc);
pack([], CurrentGroup, Acc) ->
    lists:reverse([lists:reverse(CurrentGroup) | Acc]);
pack([H|T], [], Acc) ->
    pack(T, [H], Acc);
pack([H|T], [H|_]=CurrentGroup, Acc) ->
    pack(T, [H|CurrentGroup], Acc);
pack([H|T], CurrentGroup, Acc) ->
    pack(T, [H], [lists:reverse(CurrentGroup) | Acc]).

