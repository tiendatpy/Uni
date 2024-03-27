package on_gk.builder.A5;

public class MainA5 {
    public static void main(String[] args) {
        Sach s = new Sach.Builder().addTuaDe("Đại chiến ninja lần thứ 4")
                .addTacGia("Naruto")
                .addSoTrang(300)
                .addDsChuong("Chương 1: Khởi đầu")
                .addDsChuong("Chương 2: Tập hợp")
                .addDsChuong("Chương 3: Chiến đấu")
                .build();
        System.out.println(s);
    }

}
