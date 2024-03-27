package on_gk.singleton.a6;


public class UI {
    public void addSP(String masp, String tensp, int soluong, double giaban){
        DataAccessDAT.getInstance().addSP_DAT(new SanPhamDAT.Builder()
                .setMaSP_DAT(masp)
                .setTenSP_DAT(tensp)
                .setSoLuong_DAT(soluong)
                .setDonGia_DAT(giaban)
                .build());
    }
    public void remove(String masp){
        DataAccessDAT.getInstance().removeSP_DAT(masp);
    }
    public void update(String masp, String tensp, int soluong, double giaban){
        DataAccessDAT.getInstance().updateSP_DAT(new SanPhamDAT.Builder().setMaSP_DAT(masp).setTenSP_DAT(tensp).setSoLuong_DAT(soluong).setDonGia_DAT(giaban).build());
    }

    public void display(){
        DataAccessDAT.getInstance().display();
    }
}
