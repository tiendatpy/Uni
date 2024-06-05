package behavioral.iterator.vd;

import java.util.Iterator;

public class MyIterator {
    public static void duyetDS(Iterator<MonHoc> iterator){
        while (iterator.hasNext()){
            MonHoc mh = iterator.next();
            System.out.println(mh);
        }
    }
}
