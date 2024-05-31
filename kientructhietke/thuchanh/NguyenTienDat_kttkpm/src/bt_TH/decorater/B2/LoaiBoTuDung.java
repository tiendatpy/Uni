package bt_TH.decorater.B2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class LoaiBoTuDung extends TokenizeDecorator{
    private ArrayList<String> stopWord;


    public LoaiBoTuDung(Tokenize token) {
        super(token);
        stopWord = new ArrayList<>(Arrays.asList("và", "thì", "hoặc", "mà", "là"));
    }

    @Override
    public List<String> tokenize() {
        List<String> words = token.tokenize();
        words.removeAll(stopWord);
        return words;
    }
}
