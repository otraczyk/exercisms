require 'set'

module Pangram
    module_function
    def pangram?(sentence)
        (Set.new('a'..'z') - sentence.downcase.chars).empty?
    end
end

module BookKeeping
  VERSION = 6
end
