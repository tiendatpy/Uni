package behavioral.chain_of_responsibility.f88;

public class ChuTich extends NhanVienF88{
    public ChuTich(String hoTen, String chucVu, int hanMucXuLyvay) {
        super(hoTen, chucVu, hanMucXuLyvay);
    }

    @Override
    public NhanVienF88 capCaoHon(NhanVienF88 nv) {
        return nv;
    }

    @Override
    public String xuLyKhoanVay(int tienVay) {
        if(tienVay <= hanMucXuLyvay){
            StringBuilder builder = new StringBuilder();
            builder.append(chucVu).append(" ").append(hoTen)
                    .append(" xử lý khoản vay: ").append(tienVay);
            return builder.toString();
        }
        return "Không xử lý được";
    }
}
