# frozen_string_literal: true

class Bottles
  def song
    verses(99, 0)
    sing
  end

  def sing
    verses(99, 0)
  end

  # This is a loop that will repeat anything within the braces (in this case, verse(number)) a hundred times, with number going from 99 to 0.
  def verses(starting, ending)
    starting.downto(ending).map { |i| verse(i) }.join("\n")
  end

  def verse(n)
    if n == 6
      '6 bottles of beer on the wall, ' \
        "6 bottles of beer.\n" \
        'Take one down and pass it around, ' \
        "5 bottles of beer on the wall.\n\n"
    elsif plural?(n)
      "#{bottle(n)} of beer on the wall, #{bottle(n)} of beer.\nTake one down and pass it around, #{bottle(n - 1)} of beer on the wall.\n"
    elsif singular?(n)
      "#{bottle(n)} of beer on the wall, #{bottle(n)} of beer.\nTake it down and pass it around, #{bottle(n - 1)} of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  private

  def plural?(n)
    n >= 2
  end

  def singular?(n)
    n == 1
  end

  def bottle(n)
    if plural?(n)
      "#{n} bottles"
    elsif singular?(n)
      "#{n} bottle"
    else
      'no more bottles'
    end
  end
end