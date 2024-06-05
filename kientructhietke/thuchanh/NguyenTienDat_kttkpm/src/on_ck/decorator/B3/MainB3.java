package on_ck.decorator.B3;

public class MainB3 {
    public static void main(String[] args) {
        Widget widget = new Text("Xin chao cac ban");
        widget = new Center(widget);
        widget = new Column(widget);
        widget.show();
    }
}
