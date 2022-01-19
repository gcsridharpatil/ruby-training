# frozen_string_literal: true

# This class has some methods that return some symbols
# It ALSO needs to have some methods that can then generate other methods
#
# Do NOT AMEND the predefined methods. They are designed to be obtrusive!
#
class RuntimeMethodGenerator
  def predefined
    :predefined
  end

  def return_funky
    :funky
  end

  # add_a_method -- For generating new method
  def add_a_method
    self.class.define_method(:funky_method) do
    return_funky
    end
  end

  # add_custom_method -- For calling the new method
  def add_custom_method(new_method)
    self.class.define_method(new_method) do
    return :predefined
    end
  end
end
