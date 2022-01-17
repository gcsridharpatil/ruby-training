# frozen_string_literal: true

  class Proxy
    def initialize(target_object)
      @object = target_object
      @messages = []
    end

    def method_missing(method_name, *args, &block)
      @messages.push method_name unless method_name == :messages
      @object.send method_name, *args, &block
    end
    def messages
      @messages
    end
    def called? target
      @messages.include? target
    end
    def number_of_times_called target
      result = 0
      @messages.each do |i|
        result += 1 if i == target
      end
      result
    end
  end