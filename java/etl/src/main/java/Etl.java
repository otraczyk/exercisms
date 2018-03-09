import java.util.*;

public class Etl {
    public Map<String, Integer> transform(Map<Integer, List<String>> old) {
        HashMap<String, Integer> newMap = new HashMap<>();
        for (Map.Entry<Integer, List<String>> e: old.entrySet()) {
            for (String letter: e.getValue()) {
                newMap.put(letter.toLowerCase(), e.getKey());
            }
        }
        return newMap;
    }
}
