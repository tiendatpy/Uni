package bt_TH.stratery.cc3;

public class MatHang {
    private String _tenMatHang;

    public int get_soLuong() {
        return _soLuong;
    }

    public float get_donGia() {
        return _donGia;
    }

    private int _soLuong;
    private float _donGia;

    public MatHang(String _tenMatHang, int _soLuong, float _donGia) {
        this._tenMatHang = _tenMatHang;
        this._soLuong = _soLuong;
        this._donGia = _donGia;
    }
}
