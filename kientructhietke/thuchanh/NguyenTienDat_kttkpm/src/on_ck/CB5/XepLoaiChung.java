package on_ck.CB5;

public class XepLoaiChung extends XepLoai{
    XepLoai caoHon;


    public XepLoaiChung(float gioiHanTren, String tenXepLoai) {
        super(gioiHanTren, tenXepLoai);
    }

    @Override
    public XepLoai loaiCaoHon(XepLoai loai) {
        caoHon = loai;
        return caoHon;
    }

    @Override
    public String xuLyXepLoai(float diem) {
        if(diem > gioiHanTren)
            return caoHon.xuLyXepLoai(diem);
        return "Xep loai: " + tenXepLoai;
    }
}
