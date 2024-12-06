-module(lesson2_task15).
-export([replicate/2]).

replicate(List, N) ->
    replicate(List, N, []).

replicate([], _N, Acc) ->
    lists:reverse(Acc);
replicate([H | T], N, Acc) ->
    replicate(T, N, replicate_elem(H, N, Acc)).

replicate_elem(_Elem, 0, Acc) ->
    Acc;
replicate_elem(Elem, Count, Acc) ->
    replicate_elem(Elem, Count - 1, [Elem | Acc]).


