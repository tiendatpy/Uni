package behavioral.chain_of_responsibility.f88;

public class NhanVien extends NhanVienF88{
    NhanVienF88 capTren;

    public NhanVien(String hoTen, String chucVu, int hanMucXuLyvay) {
        super(hoTen, chucVu, hanMucXuLyvay);
    }

    @Override
    public NhanVienF88 capCaoHon(NhanVienF88 nv) {
        capTren = nv;
        return capTren;
    }

    @Override
    public String xuLyKhoanVay(int tienVay) {
        if(tienVay <= hanMucXuLyvay){
            StringBuilder builder = new StringBuilder();
            builder.append(chucVu).append(" ").append(hoTen)
                    .append(" xử lý khoản vay: ").append(tienVay);
            return builder.toString();
        }
        return capTren.xuLyKhoanVay(tienVay);
    }
}
