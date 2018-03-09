import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class DNA {

    private final String sequence;

    private Map<Character, Integer> counts;

    private void countNucleotides(){
        /* Iteration 2: make use of java 8 features.
        
         Applying Streams was a disappointment: hard to debug
         (stream of char[] or char list has one element!)
         and not as elegant as I expected.
        */
        List<Character> nucleotides = Arrays.asList('A', 'C', 'T', 'G');
       
        counts = sequence.chars()  // Stream of ints, need to convert
            .mapToObj((nucl) -> (char)nucl)
            .filter(s -> nucleotides.contains(s))
            .collect(Collectors.groupingBy(
                    n -> n,
                    Collectors.summingInt(n -> 1)
            ));
        
        nucleotides.forEach(
                nucl -> counts.putIfAbsent(nucl, 0)
        );
    }

    public Map<Character, Integer> nucleotideCounts(){
        return counts;
    }

    public Integer count(char nucleotide) {
        if (counts.containsKey(nucleotide)) {
            return counts.get(nucleotide);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public DNA(String sequence){
        this.sequence = sequence;
        counts = new HashMap<>();
        countNucleotides();
    }

}
