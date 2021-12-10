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
  # Iterates the block, Passing decresing values
  def verses(starting, ending)
    starting.downto(ending).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    case number
    when 6

      '6 bottles of beer on the wall, ' \
      "6 bottles of beer.\n" \
      'Take one down and pass it around, ' \
      "5 bottles of beer on the wall.\n\n"

    when 1

      '1 bottle of beer on the wall, ' \
      "1 bottle of beer.\n" \
      'Take it down and pass it around, ' \
      "no more bottles of beer on the wall.\n"

    when 2

      '2 bottles of beer on the wall, ' \
      "2 bottles of beer.\n" \
      'Take one down and pass it around, ' \
      "1 bottle of beer on the wall.\n"

    when 0

      'No more bottles of beer on the wall, ' \
      "no more bottles of beer.\n" \
      'Go to the store and buy some more, ' \
      "99 bottles of beer on the wall.\n"

    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"

    end
  end
end
