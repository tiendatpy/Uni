package bt_TH.builder.A5;

public class MainA5 {
    public static void main(String[] args) {
        Sach s = new Sach.Builder().addTuaDe("Tân nhật ký trong tù")
                .addTacGia("Tiến Đạt")
                .addSoTrang(200)
                .addChuong("Chương 1: Lý do vào tù ")
                .addChuong("Chương 2: Thử thách")
                .addChuong("Chương 3: Nỗi sợ")
                .build();
        System.out.println(s);
    }
}
