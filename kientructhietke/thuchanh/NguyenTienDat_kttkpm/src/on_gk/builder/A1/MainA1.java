package on_gk.builder.A1;


public class MainA1 {
    public static void main(String[] args) {
        HoaDon h = new HoaDon.Builder().setHoaDonHeader("123","12/4/2003","Tiến Đạt")
                .setCthds("Bột giặt",10,0.02f,15_000)
                .setCthds("Dầu chiên",5,0.02f,25_000)
                .build();
        System.out.println(h.toString());
    }
}
