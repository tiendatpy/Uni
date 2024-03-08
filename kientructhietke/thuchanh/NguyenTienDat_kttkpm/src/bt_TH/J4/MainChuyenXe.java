package bt_TH.J4;

public class MainChuyenXe {
    public static void main(String[] args){
        //    noi thanh
        XeNoiThanh nt1 = new XeNoiThanh("NT1", "Tiến Đạt","XE1", 50.2, "T1", 20);
        XeNoiThanh nt2 = new XeNoiThanh("NT2", "Tiến Đạt2","XE2", 145, "T2", 40);
        XeNoiThanh nt3 = new XeNoiThanh("NT3", "Tiến Đạt3","XE3", 10, "T3", 30);
//    ngoai thanh
        XeNgoaiThanh ngt1 = new XeNgoaiThanh("NGT1", "Tài Xế A", "Xe 001", 2000.0, "Nơi A", 3);
        XeNgoaiThanh ngt2 = new XeNgoaiThanh("NGT2", "Tài Xế B", "Xe 002", 1800.0, "Nơi B", 2);
        XeNgoaiThanh ngt3 = new XeNgoaiThanh("NGT3", "Tài Xế C", "Xe 003", 2200.0, "Nơi C", 4);

        QuanLyChuyenXe cx = new QuanLyChuyenXe();
        cx.themCX(nt1);
        cx.themCX(nt2);
        cx.themCX(nt3);
        cx.themCX(ngt1);
        cx.themCX(ngt2);
        cx.themCX(ngt3);
        cx.InDanhSach();
        System.out.println("Tổng doanh thu của xe ngoại thành: " + cx.tinhDoanhThuNgoaiThanh());
        System.out.println("Tổng doanh thu của xe nội thành: " + cx.tinhDoanhThuNoiThanh());
        System.out.println("Tổng doanh thu cả 2 loại xe: " + cx.tongDoanhThu());
    }
}
