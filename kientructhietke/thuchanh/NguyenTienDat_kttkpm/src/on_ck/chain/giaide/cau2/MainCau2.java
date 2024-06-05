package on_ck.chain.giaide.cau2;

public class MainCau2 {
    public static void main(String[] args) {
        LuongThongThuong max5 = new LuongThongThuong(5_000_000, 0.05f);
        LuongThongThuong max10 = new LuongThongThuong(10_000_000, 0.1f);
        LuongThongThuong max18 = new LuongThongThuong(18_000_000, 0.15f);
        LuongThongThuong max32 = new LuongThongThuong(32_000_000, 0.2f);
        LuongThongThuong max52 = new LuongThongThuong(52_000_000, 0.25f);
        LuongThongThuong max80 = new LuongThongThuong(80_000_000, 0.3f);
        LuongCaoNhat caoNhat = new LuongCaoNhat(Integer.MAX_VALUE, 0.35f);

        max5.bacCaoHon(max10).bacCaoHon(max18).bacCaoHon(max32).bacCaoHon(max52).bacCaoHon(max80).bacCaoHon(caoNhat);

        System.out.println(max5.tinhThue(11375000));
    }
}
