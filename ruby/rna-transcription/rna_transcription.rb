class Complement
    @@transcribe = {
            "G" => "C",
            "C" => "G",
            "T" => "A",
            "A" => "U",
    }

    def self.of_dna(dna)
        return "" unless dna.chars.all? { |n| @@transcribe.key?(n) }
        dna.chars.map { |n| @@transcribe[n] }.join("")
    end
end

module BookKeeping
  VERSION = 4
end
