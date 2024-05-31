package bt_TH.chain.CB4;

import java.util.List;

public class MainCB4 {
    public static void main(String[] args) {
        GiaiThongThuong gdb = new GiaiThongThuong("Giải đặc biệt", List.of("861225"));
        GiaiThongThuong g1 = new GiaiThongThuong("Giải 1", List.of("08006"));
        GiaiThongThuong g2 = new GiaiThongThuong("Giải 2", List.of("14039"));
        GiaiThongThuong g3 = new GiaiThongThuong("Giải 3", List.of("92375", "59315"));
        GiaiThongThuong g4 = new GiaiThongThuong("Giải 4", List.of("15214", "15989", "093343"));
        GiaiThongThuong g5 = new GiaiThongThuong("Giải 5", List.of("3127"));
        GiaiThongThuong g6 = new GiaiThongThuong("Giải 6", List.of("5479", "5582", "9976"));
        GiaiThongThuong g7 = new GiaiThongThuong("Giải 7", List.of("682"));
        GiaiCuoi g8 = new GiaiCuoi("Giải 8", List.of("00"));
        //GiaiKhuyenKhich gkk = new GiaiKhuyenKhich("Giải khuyến khích","");
        gdb.giaiKeTiep(g1)
                .giaiKeTiep(g2)
                .giaiKeTiep(g3)
                .giaiKeTiep(g4)
                .giaiKeTiep(g5)
                .giaiKeTiep(g6)
                .giaiKeTiep(g7)
                .giaiKeTiep(g8);

        gdb.doVeSo("85225");

    }
}
