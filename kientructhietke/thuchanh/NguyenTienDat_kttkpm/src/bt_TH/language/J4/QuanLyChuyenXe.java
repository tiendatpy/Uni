package bt_TH.language.J4;

import java.util.ArrayList;

public class QuanLyChuyenXe {
    private ArrayList<ChuyenXe> lstChuyenXe;
    public QuanLyChuyenXe(){
        lstChuyenXe = new ArrayList<>();

    }
    public void themCX(ChuyenXe cx){
        for (ChuyenXe c : lstChuyenXe)
            if(c.getMaSoXe().equals(cx.getMaSoXe()))
                return;
        lstChuyenXe.add(cx);
    }
    public void InDanhSach(){
        for (ChuyenXe cx : lstChuyenXe){
            System.out.println(cx.toString());;
        }
    }
    public double tinhDoanhThuNoiThanh(){
        double s = 0;
        for(ChuyenXe cx : lstChuyenXe){
            if (cx instanceof XeNoiThanh){
                s += cx.getDoanhThu();
            }
        }
        return s;
    }
    public double tinhDoanhThuNgoaiThanh(){
        double s = 0;
        for(ChuyenXe cx : lstChuyenXe){
            if (cx instanceof XeNgoaiThanh){
                s += cx.getDoanhThu();
            }
        }
        return s;
    }
    public double tongDoanhThu(){
        double s = 0;
        for (ChuyenXe cx : lstChuyenXe){
            s += cx.getDoanhThu();
        }
        return s;
    }
    public ArrayList<ChuyenXe> getLstChuyenXe() {
        return lstChuyenXe;
    }
}
