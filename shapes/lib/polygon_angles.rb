# frozen_string_literal: true

def internal_angle(n)
  raise PolygonError, "Angle cannot be '0' or 'negative'" if n.zero? || n.negative?

  (((n - 2) * 180).to_f / n).round(2)
end

def external_angle(n)
  (360 / n.to_f).round(2)
end

# # Error class used in invalid_triangle_spec. No need to change this code.
class PolygonError < StandardError
end
