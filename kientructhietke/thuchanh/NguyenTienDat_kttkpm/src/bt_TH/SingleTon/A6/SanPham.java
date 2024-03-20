package bt_TH.SingleTon.A6;

public class SanPham {
    public String get_maSP() {
        return _maSP;
    }

    public String get_tenSP() {
        return _tenSP;
    }

    public int get_soLuong() {
        return _soLuong;
    }

    public double get_donGia() {
        return _donGia;
    }

    private String _maSP, _tenSP;
    private int _soLuong;

    public void set_maSP(String _maSP) {
        this._maSP = _maSP;
    }

    public void set_tenSP(String _tenSP) {
        this._tenSP = _tenSP;
    }

    public void set_soLuong(int _soLuong) {
        this._soLuong = _soLuong;
    }

    public void set_donGia(double _donGia) {
        this._donGia = _donGia;
    }

    private double _donGia;

    public SanPham(String _maSP, String _tenSP, int _soLuong, double _donGia) {
        this._maSP = _maSP;
        this._tenSP = _tenSP;
        this._soLuong = _soLuong;
        this._donGia = _donGia;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Mã sản phẩm: ").append(get_maSP())
                .append(",\tTên sản phẩm: ").append(get_tenSP())
                .append(",\tSố lượng: ").append(get_soLuong())
                .append(",\tĐơn giá: ").append(get_donGia());
        return builder.toString();
    }
}
