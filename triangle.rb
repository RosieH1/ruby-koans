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
   raise TriangleError if [a,b,c].min <= 0
   x = [a,b,c].sort
   raise TriangleError if x[2] >= x[0] + x[1]
  if a == b && a == c
    triangle_type = :equilateral
  elsif a == b || a == c || b == c
    triangle_type = :isosceles
  else
    triangle_type = :scalene
  end
 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
