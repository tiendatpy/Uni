package bt_TH.chain.CB5;

public abstract class XepLoai {
    String tenLoai;
    float ghDuoi, ghTren;

    public XepLoai(String tenLoai, float ghDuoi, float ghTren) {
        this.tenLoai = tenLoai;
        this.ghDuoi = ghDuoi;
        this.ghTren = ghTren;
    }

    public abstract XepLoai xepLoaiCaoHon(XepLoai xl);
    public abstract String xuLyDiem(float diemSo);
}
