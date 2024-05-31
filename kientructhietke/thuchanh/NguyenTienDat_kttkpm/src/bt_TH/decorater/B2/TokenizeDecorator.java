package bt_TH.decorater.B2;

public abstract class TokenizeDecorator implements Tokenize{
    protected Tokenize token;

    public TokenizeDecorator(Tokenize token) {
        this.token = token;
    }

}
