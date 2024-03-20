package bt_TH.language.J3;

public class SinhVienBiz extends SinhVienPoly{
    double dmkt, dsales;

    public SinhVienBiz(String hoTen, String nganh, double dmkt, double dsales) {
        super(hoTen, nganh);
        this.dmkt = dmkt;
        this.dsales = dsales;
    }

    @Override
    public double getDiem() {
        return (2*dmkt + dsales)/3;
    }

    @Override
    public void Xuat() {
        super.Xuat();
        System.out.println("ĐiểmMKT: " + dmkt + "\nĐiểm sales: " + dsales + "\nHọc lực: " + hocLuc() );
    }
}
