module Pangram
    module_function
    def pangram?(sentence)
        ('a'..'z').all? { |l| sentence[l]  || sentence[l.upcase] }
    end
end

module BookKeeping
  VERSION = 6
end
