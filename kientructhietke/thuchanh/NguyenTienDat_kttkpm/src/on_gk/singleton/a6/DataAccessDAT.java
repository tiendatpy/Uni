package on_gk.singleton.a6;

import java.util.ArrayList;
import java.util.List;

public class DataAccessDAT {
    List<SanPhamDAT> lstSP = new ArrayList<>();
    private static DataAccessDAT instance;
    protected DataAccessDAT(){};
    public static DataAccessDAT getInstance(){
        if(instance == null){
            return new DataAccessDAT();
        }
        return instance;
    }

    public void addSP_DAT(SanPhamDAT sp){
//        for(var s : lstSP){
//            if(s.maSP_DAT.equals(sp.maSP_DAT)) {
//                return;
//            }
//        }
        lstSP.add(sp);
    }
    public void removeSP_DAT(String masp){
        for(int i=0 ; i< lstSP.size(); i++){
            if(lstSP.get(i).maSP_DAT.equals(masp)) {
                lstSP.remove(i);
                return;
            }
        }
    }

    public void updateSP_DAT(SanPhamDAT sp){
        for(int i=0 ; i< lstSP.size(); i++){
            if(lstSP.get(i).maSP_DAT.equals(sp.maSP_DAT)){
                lstSP.set(i,sp);
                return;
            }
        }
    }

    public void display(){
        System.out.println("abc");
        for (var s : lstSP){
            System.out.println(s);
        }
        System.out.println(lstSP.size());
    }


}
