package bt_TH.J12;

import java.util.ArrayList;
import java.util.List;

public class QuanLyNhanVien implements IQuanLy {
    private final List<NhanVien> lstNV;

    public QuanLyNhanVien() {
        lstNV = new ArrayList<>();
    }

    @Override
    public void them(NhanVien nv) {
        lstNV.add(nv);
    }

    @Override
    public void inDS() {
        for (int i = 0; i < lstNV.size(); i++) {
            System.out.println("Nhân viên thứ " + (i + 1) + ":");
            NhanVien nv = lstNV.get(i);
            System.out.println(nv.toString());
            System.out.println("/////////////");
        }
//        for(NhanVien nv : lstNV){
//            System.out.println(nv.getThongTin());
//        }
    }
}
