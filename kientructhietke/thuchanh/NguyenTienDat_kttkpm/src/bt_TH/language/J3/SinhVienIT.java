package bt_TH.language.J3;

public class SinhVienIT extends SinhVienPoly{
    double dJava, dhtml, dcss;

    public SinhVienIT(String hoTen, String nganh, double dJava, double dhtml, double dcss) {
        super(hoTen, nganh);
        this.dJava = dJava;
        this.dhtml = dhtml;
        this.dcss = dcss;
    }

    @Override
    public double getDiem() {
        return (2*dJava + dhtml + dcss)/4;
    }

    @Override
    public void Xuat() {
        super.Xuat();
        System.out.println("Điểm HTML: " + dhtml + "\nĐiểm Java: " + dJava + "\nĐiểm CSS: " +dcss + "\nHọc lực: " + hocLuc());
    }
}
