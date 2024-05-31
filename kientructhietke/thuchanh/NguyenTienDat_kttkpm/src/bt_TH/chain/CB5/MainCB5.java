package bt_TH.chain.CB5;

public class MainCB5 {
    public static void main(String[] args) {
        XepLoaiChung hsy = new XepLoaiChung("Yếu", 0, 5);
        XepLoaiChung hstb = new XepLoaiChung("Trung bình", 5, 7);
        XepLoaiChung hsk = new XepLoaiChung("Khá", 7, 8);
        XepLoaiChung hsg = new XepLoaiChung("Giỏi", 8, 9 );
        XepLoaiChung hsxs = new XepLoaiChung("Xuất sắc", 9, 10);

        hsy.xepLoaiCaoHon(hstb).xepLoaiCaoHon(hsk).xepLoaiCaoHon(hsg).xepLoaiCaoHon(hsxs);
        System.out.println(hsy.xuLyDiem(10f));
    }
}
