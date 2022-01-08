# frozen_string_literal: true

# Each entry in the array is associated with
# the following states:
#
# HORIZONTAL LINE = HL
# VERTICAL LINE = VL

# The HORIZONTAL state produces a single horizontal line. There
# are two types:
#
# 0 - skip, no line necessary, just space fill
# 1 - Horizontal line
#
# The VERTICAL state produces a either a single right side line,
# a single left side line or a both lines.
#
# 0 - skip, no line necessary, just space fill
# 1 - single right side line
# 2 - single left side line along with bottom HL
# 3 - both lines
# 4 - both lines along with bottom HL

class LCD
  # Write your code in here
  attr_reader :digit, :lcdstates, :lcddisplaydata
  def initialize(number)
    @digit = number
    @lcdstates = %w[HL VL VL]
    @lcddisplaydata = {
      0 => [1, 3, 4],
      6 => [1, 2, 4],
      8 => [1, 4, 4]
    }
  end

  def render
    e = lcdstates.each_with_index.map do |w, index|
             if w ==  "HL"
                horizontal_segment(lcddisplaydata[digit][index]) + "\n"
             else w == "VL"
                vertical_segment(lcddisplaydata[digit][index]) + "\n"
             end
    end
      e.join("")
  end

  def horizontal_segment(type)
      case type
      when 1
        return  " _"
      else
        return ""
      end
   end

   def vertical_segment(type)
      case type
      when 1
        return " "+ "|"
      when 2
        return "|_"
      when 3
        return "| |"
      when 4
        return "|_|"
      else
        return ""
      end
   end
end

