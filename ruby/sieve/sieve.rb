class Sieve
  def initialize(n)
    primes = *(2..n)
    primes.each_with_index do | p, i |
      primes[i..-1].select { | r | p * r <= n }
        .each { | r | primes.delete(p * r) }
    end
    @primes_list = primes
  end

  def primes
    return @primes_list
  end
end

module BookKeeping
  VERSION = 1
end
