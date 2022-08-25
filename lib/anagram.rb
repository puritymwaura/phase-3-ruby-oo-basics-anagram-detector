# Your code goes here!


require 'pry'

class Anagram
    attr_reader :word
    def initialize(word)
        @word = word
    end

    def match(arr)
        ref = @word.chars.sort
        empty = []
        arr.each do |elem|    
            if elem.chars.sort == ref
                empty << elem
            else
                next
            end
        end
        return empty
    end
end

listen = Anagram.new('listen')
p listen.match(%w[enlists google inlets banana])
