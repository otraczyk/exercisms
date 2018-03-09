class Hamming
    def self.compute(strand_A, strand_B)
        if strand_A.length != strand_B.length
            raise ArgumentError
        end
        diff_count = 0
        (0..strand_A.length).each do |i|
            if strand_A[i] != strand_B[i]
                diff_count += 1
            end
        end
        return diff_count
    end
end

module BookKeeping
    VERSION = 3
end
