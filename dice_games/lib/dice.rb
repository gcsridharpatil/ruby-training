# frozen_string_literal: true

class Dice
  def roll(n = 1)
    @values = []
    i = 0
    if n == 1
      @values[i] = rand(1..6)
    else
      while i <= (n - 1)
        @values[i] = rand(1..5)
        i += 1
      end
      @values
    end
  end

  attr_reader :values
end
