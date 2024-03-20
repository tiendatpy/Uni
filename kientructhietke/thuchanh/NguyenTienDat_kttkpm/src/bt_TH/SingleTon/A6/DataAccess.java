package bt_TH.SingleTon.A6;

import java.util.ArrayList;
import java.util.List;

public class DataAccess {
    private static DataAccess instance;
    protected DataAccess(){};
    List<SanPham> lstSP = new ArrayList<>();
    public static DataAccess getInstance(){
        if(instance == null){
            instance = new DataAccess();
        }
        return instance;
    }
    public void addSP(SanPham s){
        lstSP.add(s);
    }

    public void update(SanPham s){
        for (int i=0; i<lstSP.size(); i++){
            if(lstSP.get(i).get_maSP() == s.get_maSP()){
                lstSP.set(i,s);
                break;
            }
        }
    }
    public void delete(String maSP){
        for(int i = 0; i< lstSP.size(); i++){
            if(lstSP.get(i).get_maSP().equals(maSP)) {
                lstSP.remove(i);
                return;
            }
        }
    }
    public void InKq(){
        System.out.println("Danh sách sản phẩm: ");
        for(var sp : lstSP){
            System.out.println(sp);
        }
    }
}
