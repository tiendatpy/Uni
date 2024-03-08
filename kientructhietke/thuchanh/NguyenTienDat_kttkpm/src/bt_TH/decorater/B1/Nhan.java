package bt_TH.decorater.B1;

public class Nhan extends BieuThucDecorator{
    float toanHang;

    public Nhan(BieuThuc bt, float toanHang) {
        super(bt);
        this.toanHang = toanHang;
    }

    @Override
    public float GiaTri() {
        return toanHang * bt.GiaTri();
    }

    @Override
    public String BieuThuc() {
        return "(" + bt.BieuThuc() + " * " + ")" + toanHang ;
    }
}
