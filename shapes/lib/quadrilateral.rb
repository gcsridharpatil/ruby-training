# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  # WRITE THIS CODE
  if a.zero? || b.zero? || c.zero? || d.zero? || a.negative? || b.negative? || c.negative? || d.negative?
    raise QuadrilateralError
  end
  raise QuadrilateralError if ((a + b + c + d) > 360) || ((a + b + c + d) < 360)

  array = []
  if (a == b) && (a == c) && (b == c) && ((a + b) == (c + d))
    [:square, :rectangle]
  elsif ((a == b) || (a == c) || (a == d)) && ((a >= b)) && ((a >= c)) && ((a + b) >= (c + d))
    [:parallelogram, :rhombus]
  elsif (a != b) && (a != c) && (a != d)
    [:quadrilateral]
  else
    (a != d) && (b != d) && (c != d)
    [:quadrilateral]

  end
end

# Error class used in invalid_quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
