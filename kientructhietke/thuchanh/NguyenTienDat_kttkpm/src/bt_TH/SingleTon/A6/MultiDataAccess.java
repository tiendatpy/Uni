package bt_TH.SingleTon.A6;

import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.List;

public class MultiDataAccess {
    private static Dictionary<String, MultiDataAccess> instances = new Hashtable<>();
    List<SanPham> lstSP = new ArrayList<>();

    public static MultiDataAccess getInstance(String tag){
        if(instances.get(tag) == null){
            var md = new MultiDataAccess();
            instances.put(tag,md);
        }
        return instances.get(tag);
    }
    public void addSP(SanPham s){
        lstSP.add(s);
    }

    public void update(SanPham s){
        for (int i=0; i<lstSP.size(); i++){
            if(lstSP.get(i).get_maSP() == s.get_maSP()){
                lstSP.set(i,s);
                return;
            }
        }
    }
    public void delete(SanPham s){
        for (int i=0; i<lstSP.size(); i++){
            if(lstSP.get(i).get_maSP() == s.get_maSP()){
                lstSP.remove(s);
                return;
            }
        }
    }
}
