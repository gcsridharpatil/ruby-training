
@@ -1,5 +1,68 @@
# frozen_string_literal: true

class LCD
  # Write your code in here
  attr_reader :digit, :lcdStates, :lcdDisplayData
  def initialize(number)
    @digit = number
    @lcdStates = %w[HORIZONTAL VERTICAL VERTICAL]
    @lcdDisplayData = {

      8 => [1, 4, 4]
    }
  end

  def initialize( size=1, spacing=1 )
    @size = size
    @spacing = spacing
    end

  def render
    e = lcdStates.each_with_index.map do |w, index|
             if w ==  "HORIZONTAL"
                horizontal_segment(lcdDisplayData[digit][index]) + "\n"
             elsif w == "VERTICAL"
                vertical_segment(lcdDisplayData[digit][index]) + "\n"
             end
    end
      e.join("")
  end

  def horizontal_segment( type )
    case type
    when 1
    return " " + ("-" * @size) + " " + (" " * @spacing)
    else
    return " " + (" " * @size) + " " + (" " * @spacing)
    end
    end

    def vertical_segment( type )
    case type
    when 1
    return " " + (" " * @size) + "|" + (" " * @spacing)
    when 2
    return "|" + (" " * @size) + " " + (" " * @spacing)
    when 3
    return "|" + (" " * @size) + "|" + (" " * @spacing)
    else
    return " " + (" " * @size) + " " + (" " * @spacing)
    end
    end
end





  #   elsif digit == 8
  #   <<~SQUIGGLY_HEREDOC
  #        _
  #       |_|
  #       |_|
  #   SQUIGGLY_HEREDOC
  #   end
  # end
