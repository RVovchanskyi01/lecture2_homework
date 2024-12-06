-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
    encode_modified(List, [], 0, []).

encode_modified([], [], 0, Acc) ->
    lists:reverse(Acc);
encode_modified([], [H|_], 1, Acc) ->
    lists:reverse([H | Acc]);
encode_modified([], [H|_], Count, Acc) ->
    lists:reverse([{Count, H} | Acc]);
encode_modified([H|T], [], 0, Acc) ->
    encode_modified(T, [H], 1, Acc);
encode_modified([H|T], [H|_]=CurrentGroup, Count, Acc) ->
    encode_modified(T, CurrentGroup, Count + 1, Acc);
encode_modified([H|T], [H1|_], 1, Acc) ->
    encode_modified(T, [H], 1, [H1 | Acc]);
encode_modified([H|T], [H1|_], Count, Acc) ->
    encode_modified(T, [H], 1, [{Count, H1} | Acc]).


