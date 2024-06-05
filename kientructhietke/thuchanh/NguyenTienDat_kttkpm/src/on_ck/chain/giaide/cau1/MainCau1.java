package on_ck.chain.giaide.cau1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class MainCau1 {
    public static void duyetNv(Iterator<NhanVien> iter){
        while (iter.hasNext()){
            NhanVien nv = iter.next();
            System.out.println(nv);
        }

    }
    public static void main(String[] args) {
        List<NhanVien> listnv = new ArrayList<>(Arrays.asList(
                new NhanVien("tiendat", "0359215188", 500000), new NhanVien("tiendat2", "0359215188", 500000))
        );
        Iterator<NhanVien> iterator = listnv.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }

        duyetNv(listnv.iterator());
    }
}
