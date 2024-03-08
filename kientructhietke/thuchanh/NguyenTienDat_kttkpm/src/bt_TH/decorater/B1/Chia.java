package bt_TH.decorater.B1;

public class Chia extends BieuThucDecorator{
    float toanHang;

    public Chia(BieuThuc bt, float toanHang) {
        super(bt);
        this.toanHang = toanHang;
    }

    @Override
    public float GiaTri() {
        return bt.GiaTri() / toanHang;
    }

    @Override
    public String BieuThuc() {
        return bt.BieuThuc() + "/" + toanHang;
    }
}
