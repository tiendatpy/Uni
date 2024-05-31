package bt_TH.decorater.B2;

import java.util.List;

public class LoaiBoDauCau extends TokenizeDecorator{
    public LoaiBoDauCau(Tokenize token) {
        super(token);
    }

    @Override
    public List<String> tokenize() {
        List<String> words = token.tokenize();
        words.replaceAll(s -> s.replaceAll("[\\p{Punct}]", ""));
        return words;

    }
}
