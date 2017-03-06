-module(second).
-export([hypotenuse/2,perimeter_right_triangle/2,area_right_triangle/2]).


% Using the function square from first.erl, define a function that gives the
% size of the hypotenuse of a right-angled triangle given the lengths of the
% two other sides.

hypotenuse(A,B) ->
  math:sqrt(A*A + B*B).

% Define functions that give the perimeter and area of a right-angled triangle,
% given the lengths of the two short sides.

perimeter_right_triangle(A,B) ->
  (A + B)/2.

area_right_triangle(A,B) ->
  (A*A + B*B)/2.
