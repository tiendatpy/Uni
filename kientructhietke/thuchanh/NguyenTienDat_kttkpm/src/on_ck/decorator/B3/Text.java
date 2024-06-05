package on_ck.decorator.B3;

public class Text extends Widget{
    String text;

    public Text(String text) {
        this.text = text;
    }

    @Override
    void show() {
        System.out.println("Text(" + text + ");");
    }
}
