# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  args = [a, b, c].sort
  message_1 = "All sides must by > 0"
  message_2 = "No one of the sides must be biger than the sum of the other ones"
  raise TriangleError, message_1 if args.any? {|x| x <= 0}
  raise TriangleError, message_2 if args[0] + args[1] <= args[2]
  result = :scalene
  if a == b && a == c
    result = :equilateral
  elsif a == b || a == c || b == c
    result = :isosceles
  end
  return result
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
