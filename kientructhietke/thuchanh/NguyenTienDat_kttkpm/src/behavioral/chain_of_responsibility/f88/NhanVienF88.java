package behavioral.chain_of_responsibility.f88;

abstract public class NhanVienF88 {
    public NhanVienF88(String hoTen, String chucVu, int hanMucXuLyvay) {
        this.hoTen = hoTen;
        this.chucVu = chucVu;
        this.hanMucXuLyvay = hanMucXuLyvay;
    }

    String hoTen;
    String chucVu;
    int hanMucXuLyvay;
    public abstract NhanVienF88 capCaoHon(NhanVienF88 nv);
    public abstract String xuLyKhoanVay(int tienVay);
}
