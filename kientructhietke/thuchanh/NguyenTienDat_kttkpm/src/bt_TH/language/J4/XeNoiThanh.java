package bt_TH.language.J4;

public class XeNoiThanh extends ChuyenXe {
    private String soTuyen;
    private int soKm;


    public XeNoiThanh(String maSoXe, String tenTaiXe, String soXe, double doanhThu, String soTuyen, int soKm) {
        super(maSoXe, tenTaiXe, soXe, doanhThu);
        this.soTuyen = soTuyen;
        this.soKm = soKm;
    }



    @Override
    public String toString(){
        return super.toString() +
                "\nSố tuyến: " + soTuyen +
                "\nSố km đi được: " + soKm +
                "\nDoanh thu: " + getDoanhThu() + "\n";
    }
}
