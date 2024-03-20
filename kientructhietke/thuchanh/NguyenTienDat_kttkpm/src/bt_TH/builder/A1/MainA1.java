package bt_TH.builder.A1;

public class MainA1 {
    public static void main(String[] args) {
       HoaDon h = new HoaDon.Builder().setHoaDonHeader("123","12/4/2003","Tiến Đạt")
               .addCTHD("Bột giặt",10,25000,0.02f)
               .addCTHD("Dầu chiên",5,15000,0.03f)
               .build();
        System.out.println(h.toString());

    }
}
