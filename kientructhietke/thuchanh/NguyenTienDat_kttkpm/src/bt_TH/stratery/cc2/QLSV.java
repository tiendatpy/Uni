package bt_TH.stratery.cc2;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class QLSV {
    private ISoSanh soSanh;

    public QLSV setComparator(Comparator<SinhVien> comparator) {
        this.comparator = comparator;
        return this;
    }

    Comparator<SinhVien> comparator;
    List<SinhVien> dsSV = new ArrayList<>();

    public void themSV(SinhVien sv){
        dsSV.add(sv);
    }
    public QLSV setSoSanh(ISoSanh soSanh){
        this.soSanh = soSanh;
        return this;
    }
    public void SapXep(){
        for(int i=0; i<dsSV.size()-1; i++){
            for(int j=i+1; j<dsSV.size();j++){
                if(soSanh.SoSanh(dsSV.get(i), dsSV.get(j))>0){
                    SinhVien temp = dsSV.get(i);
                    dsSV.set(i, dsSV.get(j));
                    dsSV.set(j, temp);
                }
            }
        }
    };
    public void SapXep2(){
        dsSV.sort((o1, o2) -> soSanh.SoSanh(o1, o2));
    }
    // so sanh bang comparator
    public void SapXep3(){
        dsSV.sort(comparator);
    }
    public void InDS(){
        for(SinhVien sv : dsSV){
            System.out.println(sv.toString());
        }
    };
}
