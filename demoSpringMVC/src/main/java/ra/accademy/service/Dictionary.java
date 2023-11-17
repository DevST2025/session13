package ra.accademy.service;

import java.util.HashMap;
import java.util.Map;

public class Dictionary {
    private Map<String, String> dictionary;

    public Dictionary() {
        dictionary = new HashMap<>();
        dictionary.put("cat", "con mèo");
        dictionary.put("dog", "con chó");
        dictionary.put("pig", "con heo");
        dictionary.put("rule", "cây thước");
        dictionary.put("phone", "điện thoại");
        dictionary.put("mouse", "con chuột");
        dictionary.put("key", "chìa khoá");
    }

    public String translate(String word) {
        if (dictionary.containsKey(word)) {
            return dictionary.get(word);
        }
        return "Không tìm thấy";
    }
}
