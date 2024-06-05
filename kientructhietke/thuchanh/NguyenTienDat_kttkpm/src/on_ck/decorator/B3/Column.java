package on_ck.decorator.B3;

public class Column extends WidgetDecorator{

    public Column(Widget child) {
        super(child);
    }

    @Override
    void show() {
        System.out.println("Column(");
        System.out.print("\t");
        child.show();
        System.out.println(")");
    }
}
