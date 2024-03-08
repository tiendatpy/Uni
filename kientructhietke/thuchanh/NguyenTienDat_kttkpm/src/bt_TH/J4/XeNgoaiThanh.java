package bt_TH.J4;

public class XeNgoaiThanh extends ChuyenXe {
    private String noiDen;
    private int soNgayDi;

    public XeNgoaiThanh(String maSoXe, String tenTaiXe, String soXe, double doanhThu, String noiDen, int soNgayDi) {
        super(maSoXe, tenTaiXe, soXe, doanhThu);
        this.noiDen = noiDen;
        this.soNgayDi = soNgayDi;
    }
    @Override
    public String toString(){
        return super.toString() +
                "\nNơi đến: " + noiDen +
                "\nSố ngày đi: " + soNgayDi + "\n";
    }
}
