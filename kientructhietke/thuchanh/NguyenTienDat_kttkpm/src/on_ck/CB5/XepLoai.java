package on_ck.CB5;

public abstract class XepLoai {
    public XepLoai(float gioiHanTren, String tenXepLoai) {
        this.gioiHanTren = gioiHanTren;
        this.tenXepLoai = tenXepLoai;
    }

    float gioiHanTren;
    String tenXepLoai;

    public abstract XepLoai loaiCaoHon(XepLoai loai);
    public abstract String xuLyXepLoai(float diem);
}
