# frozen_string_literal: true

class Greed
  def score(dice = nil)
    if dice.nil?
      raise GreedError

    else

      total = 0

      dice.uniq.each do |num|
        if num == 1

          if dice.count(1) >= 3

            total += 1000

            total += 100 * (dice.count(1) - 3)

          else

            total += 100 * dice.count(1)

          end

        elsif num == 5

          if dice.count(5) >= 3

            total += 5  * 100

            total += 50 * (dice.count(5) - 3)

          else

            total += 50 * dice.count(5)

          end

        elsif dice.count(num) >= 3
          total += num * 100
        end
      end

      total

    end
  end
end

class GreedError < StandardError
end
