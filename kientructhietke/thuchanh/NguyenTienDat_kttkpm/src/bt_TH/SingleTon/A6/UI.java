package bt_TH.SingleTon.A6;

public class UI {
    public void addSP(String maSanPham, String tenSanPham, int soLuong, double donGia){
        DataAccess.getInstance().addSP(new SanPham(maSanPham, tenSanPham, soLuong, donGia));
    }
    public void removeSP(String maSP){
        DataAccess.getInstance().delete(maSP);
    }

    public void updateSP(String maSanPham, String tenSanPham, int soLuong, double donGia){
        DataAccess.getInstance().update(new SanPham(maSanPham, tenSanPham, soLuong, donGia));
    }

    public void InKQ(){
        DataAccess.getInstance().InKq();
    }
}
