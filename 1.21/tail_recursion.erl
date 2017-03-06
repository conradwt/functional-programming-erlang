-module(tail_recursion).
-export([fib/1,fib/3, perfect/1, perfect/3]).

fib(N) ->
  fib(N, 0, 1).

fib(0, P, _) ->
  P;
fib(N, P, C) ->
  fib(N - 1, C, P + C).

perfect(N) ->
  perfect(N, 1, 0).

perfect(N, N, Sum) ->
  N == Sum;
perfect(N, M, Sum) when N rem M == 0 ->
  perfect( N, M+1, M + Sum);
perfect(N, M, Sum) ->
  perfect(N, M+1, Sum).
