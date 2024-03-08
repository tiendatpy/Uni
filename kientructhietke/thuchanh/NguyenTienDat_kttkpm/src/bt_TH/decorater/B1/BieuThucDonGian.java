package bt_TH.decorater.B1;

public class BieuThucDonGian extends BieuThuc{
    float toanHang;

    public BieuThucDonGian(float toanHang) {
        this.toanHang = toanHang;
    }

    @Override
    public float GiaTri() {
        return toanHang;
    }

    @Override
    public String BieuThuc() {
        return toanHang + "";
    }
}
