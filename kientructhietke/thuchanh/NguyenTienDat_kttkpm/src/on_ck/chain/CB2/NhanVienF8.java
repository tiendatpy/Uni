package on_ck.chain.CB2;


public abstract class NhanVienF8 {

    String ten, chucVu;
    int hanMucXulyVay;

    public NhanVienF8(String ten, String chucVu, int hanMucXulyVay) {
        this.ten = ten;
        this.chucVu = chucVu;
        this.hanMucXulyVay = hanMucXulyVay;
    }

    public abstract NhanVienF8 capCaoHon(NhanVienF8 nv);
    public abstract String xuLyVay(int tienVay);
}
