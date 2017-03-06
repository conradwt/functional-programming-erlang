-module(first).
-export([perimeter/2]).

perimeter(X,Y) ->
  square( (X * Y)/2 ).

area(A,B,C) ->

    S = (A+B+C)/2,

    math:sqrt(S*(S-A)*(S-B)*(S-C)).
