class Hamming
  def self.compute(strand_A, strand_B)
    raise ArgumentError if strand_A.length != strand_B.length
    strand_A.chars.zip(strand_B.chars).count do |nuc_A, nuc_B|
      nuc_A != nuc_B
    end
  end
end

module BookKeeping
  VERSION = 3
end
