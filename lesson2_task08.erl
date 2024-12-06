-module(lesson2_task08).
-export([compress/1]).

compress(List) ->
    compress(List, []).

compress([], Acc) ->
    lists:reverse(Acc); % Reverse the accumulator to get the correct order
compress([H|T], []) ->
    compress(T, [H]); % Initialize the accumulator with the first element
compress([H|T], [H1|_]=Acc) when H =:= H1 ->
    compress(T, Acc); % Skip the element if it's the same as the last one in the accumulator
compress([H|T], Acc) ->
    compress(T, [H|Acc]). % Add the element to the accumulator if it's different
