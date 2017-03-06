-module(tail_recursion).
-export([fib/1,fib/3]).

fib(N) ->
  fib(N, 0, 1).
fib(0, P, _) ->
  P;
fib(N, P, C) ->
  fib(N - 1, C, P + C).
