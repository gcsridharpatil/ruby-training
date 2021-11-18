# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  # WRITE THIS CODE
  array = []
  if (a == b) && (a == c) && (b == c) && ((a + b) == (c + d))
    [:square, :rectangle]
  elsif ((a == b) || (a == c) || (a == d)) && ((a >= b)) && ((a >= c)) && ((a + b) >= (c + d))
    [:parallelogram, :rhombus]
  elsif (a != b) && (a != c) && (a != d)
    [:quadrilateral]
  else (a != d) && (b != d) && (c != d)
    [:quadrilateral]

  end
end

# Error class used in invalid_quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end

RSpec.describe 'quadrilateral types' do
  it 'is square or rectangle when all angles are the same' do
    expect(quadrilateral(90, 90, 90, 90)).to eq([:square, :rectangle])
  end

  it 'is parallelogram or rhombus when there are 2 pairs of equal angles' do
    expect(quadrilateral(95, 95, 85, 85)).to eq([:parallelogram, :rhombus])
    expect(quadrilateral(120, 60, 120, 60)).to eq([:parallelogram, :rhombus])
    expect(quadrilateral(95, 85, 85, 95)).to eq([:parallelogram, :rhombus])
  end

  it 'is a quadrilateral when no angles are equal' do
    expect(quadrilateral(90, 80, 70, 120)).to eq([:quadrilateral])
    expect(quadrilateral(10, 20, 300, 30)).to eq([:quadrilateral])
    expect(quadrilateral(95, 5, 100, 160)).to eq([:quadrilateral])
  end

  it 'is a quadrilateral when there is not 2 pairs of equal angles' do
    expect(quadrilateral(10, 10, 300, 40)).to eq([:quadrilateral])
    expect(quadrilateral(80, 80, 80, 120)).to eq([:quadrilateral])
  end
  end
