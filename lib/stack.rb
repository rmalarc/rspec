require 'pry'
require_relative './number.rb'
class Stack
    def initialize
        @elements = []
    end

    def length
        @elements.length
    end

    # Return self
    def push(x)
        @elements.push x
        self
    end

    def pop
        @elements.pop
    end

    def peek
        @elements[-1]
    end

    def display
        puts "(LeftMost : Oldest Element) " + @elements.join("<-") +" (RightMost : Newest Element)"
    end
end


binding.pry
