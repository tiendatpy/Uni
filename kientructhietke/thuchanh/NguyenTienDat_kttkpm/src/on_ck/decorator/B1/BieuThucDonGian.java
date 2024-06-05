package on_ck.decorator.B1;

public class BieuThucDonGian extends BieuThuc{
    public BieuThucDonGian(float toanHang) {
        this.toanHang = toanHang;
    }

    float toanHang;
    @Override
    float giaTri() {
        return toanHang;
    }

    @Override
    String bieuThuc() {
        return giaTri() + "";
    }
}
