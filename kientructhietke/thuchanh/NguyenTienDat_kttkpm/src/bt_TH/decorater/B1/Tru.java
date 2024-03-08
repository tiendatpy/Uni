package bt_TH.decorater.B1;

public class Tru extends BieuThucDecorator{
    float toanHang;

    public Tru(BieuThuc bt, float toanHang) {
        super(bt);
        this.toanHang = toanHang;
    }


    @Override
    public float GiaTri() {
        return bt.GiaTri() - toanHang;
    }

    @Override
    public String BieuThuc() {
        return bt.GiaTri() + " - " + toanHang;
    }
}
