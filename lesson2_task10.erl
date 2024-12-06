-module(lesson2_task10).
-export([encode/1]).

encode(List) ->
    encode(List, [], 0, []).

encode([], [], 0, Acc) ->
    lists:reverse(Acc);
encode([], [H|_], Count, Acc) ->
    lists:reverse([{Count, H} | Acc]);
encode([H|T], [], 0, Acc) ->
    encode(T, [H], 1, Acc);
encode([H|T], [H|_]=CurrentGroup, Count, Acc) ->
    encode(T, CurrentGroup, Count + 1, Acc);
encode([H|T], [H1|_], Count, Acc) ->
    encode(T, [H], 1, [{Count, H1} | Acc]).

