package on_gk.composite.De2;

public class MainDe2 {
    public static void main(String[] args) {
        AbstractProfileDAT cty = new GroupDAT("Mail Client");
        AbstractProfileDAT nhom1 = new GroupDAT("Nhóm Design");
        AbstractProfileDAT nhom2 = new GroupDAT("Nhóm DEV");

        AbstractProfileDAT nv1 = new MemberDAT.Builder().setTenNV_DAT("Tiến Đạt").setSdt_DAT("0359215188").setPhongBan_DAT("CNTT").setEmail_DAT("datn71356@gmail.com").build();
        AbstractProfileDAT nv2 = new MemberDAT.Builder().setTenNV_DAT("Tiến Đạt2").setSdt_DAT("0259215188").setPhongBan_DAT("Kế toán").setEmail_DAT("datn71356@gmail.com").build();
        AbstractProfileDAT nv3 = new MemberDAT.Builder().setTenNV_DAT("Tiến Đạt3").setSdt_DAT("0159215188").setPhongBan_DAT("CNTT").setEmail_DAT("datn71356@gmail.com").build();

        cty.addNVDAT(nhom1);
        cty.addNVDAT(nhom2);

        nhom1.addNVDAT(nv1);
        nhom1.addNVDAT(nv3);

        nhom2.addNVDAT(nv2);
        System.out.println(cty.display("    "));
    }
}
