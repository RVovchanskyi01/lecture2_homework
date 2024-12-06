-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    is_palindrome_helper(List, lists:reverse(List)).

is_palindrome_helper([], []) -> true; 
is_palindrome_helper([H1 | T1], [H2 | T2]) ->
    H1 =:= H2 andalso is_palindrome_helper(T1, T2).  