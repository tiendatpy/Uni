package on_ck.CB5;

public class MainCB5 {
    public static void main(String[] args) {
        XepLoaiChung yeu = new XepLoaiChung(5, "Yếu");
        XepLoaiChung tb = new XepLoaiChung(7, "Trung bình");
        XepLoaiChung kha = new XepLoaiChung(8, "Kha");
        XepLoaiChung gioi = new XepLoaiChung(9, "Gioi");
        LoaiXuatSac xuatSac = new LoaiXuatSac(10, "Xuất sắc");

        yeu.loaiCaoHon(tb).loaiCaoHon(kha).loaiCaoHon(gioi).loaiCaoHon(xuatSac);

        System.out.println(yeu.xuLyXepLoai(2));
    }
}
