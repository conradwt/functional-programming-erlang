-module(pattern_matching).
-export([xor_1/2, xor_2/2, xor_3/2, max_three/3, how_many_equal/3]).

% Exclusive or
% In the previous video step on pattern matching we saw two ways of defining “exclusive or”. Give at least three others. You might find it useful to know that:
%
% =/= and == are the operations for inequality and equality in Erlang;
%
% not is the Erlang negation function; and,
%
% and and or are the Erlang conjunction and disjunction (infix) operators.

xor_1(A, B) ->
  A =/= B.

xor_2(A,B) ->
  (A or B) and (not (A and B)).

xor_3(A, B) ->
  not (A == B).

% Maximum of three
% Give a definition of the function maxThree which takes three integers and returns the maximum of the three. You can use the max function, which gives the maximum of two numbers, in writing your definition.
%
% maxThree(34,25,36) = 36

max_three(A, B, C) ->
  max(max(A, B), C).

% How many equal?
% Give a definition of the function howManyEqual which takes three integers and returns an integer, counting how many of its three arguments are equal, so that:
%
% howManyEqual(34,25,36) = 0
% howManyEqual(34,25,34) = 2
% howManyEqual(34,34,34) = 3

how_many_equal(A, A, A) ->
  3;
how_many_equal(A, A, _) ->
  2;
how_many_equal(A, _, A) ->
  2;
how_many_equal(_, B, B) ->
  2;
how_many_equal(_,_,_) ->
  0.
