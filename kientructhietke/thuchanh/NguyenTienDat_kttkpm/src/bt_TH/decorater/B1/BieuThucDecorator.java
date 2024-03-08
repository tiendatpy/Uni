package bt_TH.decorater.B1;

public abstract class BieuThucDecorator extends BieuThuc{
    BieuThuc bt;

    public BieuThucDecorator(BieuThuc bt) {
        this.bt = bt;
    }

}
