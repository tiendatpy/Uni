package bt_TH.stratery.cc2;

import java.util.Date;

public class MainSinhVien {
    public static void main(String[] args) {
        SinhVien sv1 = new SinhVien("Tiến Đạt",new Date(2003, 7, 18),8);
        SinhVien sv2 = new SinhVien("Tiến Nam",new Date(2003, 7, 18),7);
        SinhVien sv3 = new SinhVien("Tiến An",new Date(2003, 7, 18),6);
        SinhVien sv4 = new SinhVien("Tiến Toàn",new Date(2003, 7, 18),5);
        QLSV lst = new QLSV();
        lst.themSV(sv2);
        lst.themSV(sv4);
        lst.themSV(sv1);
        lst.themSV(sv3);
        lst.InDS();
        lst.setSoSanh(new SoSanhTheoDiem());
        System.out.println("\nSap xep theo ten:");
        lst.InDS();
    }
}
