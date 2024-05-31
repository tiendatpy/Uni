package on_ck.chain.CB2;


public class ChuTich extends NhanVienF8{
    public ChuTich(String ten, String chucVu, int hanMucXulyVay) {
        super(ten, chucVu, hanMucXulyVay);
    }

    @Override
    public NhanVienF8 capCaoHon(NhanVienF8 nv) {
        return this;
    }

    @Override
    public String xuLyVay(int tienVay) {
        if(tienVay <= hanMucXulyVay)
            return chucVu + "xử lý khoản vay" + tienVay;
        return "Không xử lý được";
    }
}
