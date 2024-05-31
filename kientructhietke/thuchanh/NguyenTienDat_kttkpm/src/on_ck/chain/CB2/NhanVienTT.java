package on_ck.chain.CB2;

import behavioral.chain_of_responsibility.f88.NhanVien;

public class NhanVienTT extends NhanVienF8{
    NhanVienF8 capTren;
    public NhanVienTT(String ten, String chucVu, int hanMucXulyVay) {
        super(ten, chucVu, hanMucXulyVay);
    }

    @Override
    public NhanVienF8 capCaoHon(NhanVienF8 nv) {
        this.capTren = nv;
        return capTren;
    }

    @Override
    public String xuLyVay(int tienVay) {
        if (tienVay > hanMucXulyVay){
            return capTren.xuLyVay(tienVay);
        }
        return chucVu + "xử lý khoản vay" + tienVay;
    }
}
