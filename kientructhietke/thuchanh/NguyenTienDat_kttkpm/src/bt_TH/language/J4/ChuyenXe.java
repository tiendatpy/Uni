package bt_TH.language.J4;

public class ChuyenXe {
    private String maSoXe, tenTaiXe, soXe;
    private double doanhThu;

    public ChuyenXe(String maSoXe, String tenTaiXe, String soXe, double doanhThu) {
        this.maSoXe = maSoXe;
        this.tenTaiXe = tenTaiXe;
        this.soXe = soXe;
        this.doanhThu = doanhThu;
    }
    @Override
    public String toString(){
        return  "Mã chuyến xe: " + maSoXe +"\nHọ tên tài xế: " + tenTaiXe + "\nSố xe: " + soXe;
    }

    public String getMaSoXe() {
        return maSoXe;
    }

    public double getDoanhThu() {
        return doanhThu;
    }

}
