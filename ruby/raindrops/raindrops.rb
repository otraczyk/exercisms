class Raindrops
    @@drops = {
        3 => "Pling",
        5 => "Plang",
        7 => "Plong"
    }
    def self.convert(num)
        res = @@drops.select { |factor, drop| num % factor == 0 }
            .map { |factor, drop|  drop }
            .join("")
        res.empty? ? num.to_s : res
    end
end

module BookKeeping
  VERSION = 3
end
