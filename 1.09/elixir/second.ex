# Using the function square from first.erl, define a function that gives the
# size of the hypotenuse of a right-angled triangle given the lengths of the
# two other sides.

defmodule Second do

  # Using the function square from first.erl, define a function that gives the
  # size of the hypotenuse of a right-angled triangle given the lengths of the
  # two other sides.

  def hypotenuse(a,b), do: :math.sqrt(a*a + b*b)

  # Define functions that give the perimeter and area of a right-angled triangle,
  # given the lengths of the two short sides.

  def perimeter_right_triangle(a, b), do: (a + b)/2

  def area_right_triangle(a, b), do: (a*a + b*b)/2
end
