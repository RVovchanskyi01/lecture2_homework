-module(lesson2_task01).
-export([last/1]).

% Знайти останній елемент списку
last([X]) -> 
    X; % Якщо в списку один елемент, він і є останнім
last([_ | Tail]) -> 
    last(Tail). % Рекурсивно викликаємо функцію для хвоста списку
