package on_ck.CB5;

public class LoaiXuatSac extends XepLoai{
    public LoaiXuatSac(float gioiHanTren, String tenXepLoai) {
        super(gioiHanTren, tenXepLoai);
    }

    @Override
    public XepLoai loaiCaoHon(XepLoai loai) {
        return this;
    }

    @Override
    public String xuLyXepLoai(float diem) {
        if(diem < gioiHanTren)
            return "Xep loai:" + tenXepLoai;
        return "Nhap sai diem";
    }
}
