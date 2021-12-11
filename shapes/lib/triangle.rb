# frozen_string_literal: true

def triangle(a, b, c)
  raise TriangleError if a.zero? || b.zero? || c.zero? || a.negative? || b.negative? || c.negative?

  if array = []
    x, y, z = [a, b, c].sort
    raise TriangleError if x + y <= z
  end
  if (a == b) && (a == c) && (b == c)
    :equilateral
  elsif (a == b) && ((a || b) != c)
    :isosceles
  elsif (a == c) && ((a || c) != b)
    :isosceles
  elsif (b == c) && ((b || c) != a)
    :isosceles
  elsif ((a > b) && (a > c)) && (a == (b + c)) &&  ((b || c) != a)
    :rightangle
  elsif ((b > a) && (b > c)) && (b == (a + c)) &&  ((a || c) != b)
    :rightangle
  elsif ((c > a) && (c > b)) && (c == (a + b)) &&  ((a || b) != c)
    :rightangle
  else
    :scalene
  end
end

# Error class used in invalid_triangle_spec. No need to change this code.
class TriangleError < StandardError
end
