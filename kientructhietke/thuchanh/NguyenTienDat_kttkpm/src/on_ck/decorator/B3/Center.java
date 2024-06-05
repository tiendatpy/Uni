package on_ck.decorator.B3;

public class Center extends WidgetDecorator{
    public Center(Widget child) {
        super(child);
    }

    @Override
    void show() {
        System.out.println("Center(");
        System.out.print("\t");
        child.show();
        System.out.println(");");
    }

}
