package on_ck.decorator.B1;

public class Cong extends BieuThucDecorator{
    int toanHang;

    public Cong(BieuThuc bt, int toanHang) {
        super(bt);
        this.toanHang = toanHang;
    }

    @Override
    float giaTri() {
        return bt.giaTri() + toanHang;
    }

    @Override
    String bieuThuc() {
        return bt.bieuThuc() + "+" + toanHang;
    }
}
