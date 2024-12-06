-module(lesson2_task07).
-export([flatten/1]).

flatten([]) -> [];
flatten([H | T]) -> 
    flatten(H) ++ flatten(T); 
flatten(Element) -> 
    [Element].  