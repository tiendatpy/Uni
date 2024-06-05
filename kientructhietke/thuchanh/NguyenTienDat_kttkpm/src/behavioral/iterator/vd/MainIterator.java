package behavioral.iterator.vd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Arrays;

public class MainIterator {
    public static void main(String[] args) {
//        List<Integer> list = new ArrayList<Integer>(Arrays.asList(1,2,3,4,5));
//        Iterator<Integer> iterator = list.iterator(); // khai báo iterator
        // in danh sách các phần tử
//        while (iterator.hasNext()){
//            System.out.println(iterator.next());
//        }
//        System.out.println("/////Cach2////");
//        Iterator<Integer> iterator2 = list.iterator();
//        iterator2.forEachRemaining(integer -> System.out.println(integer));
        /////
        List<MonHoc> mhs = new ArrayList<MonHoc>(Arrays.asList(
                new MonHoc("abc", 1),
                new MonHoc("abcdefgh", 11)
        ));

        System.out.println("Thong qua phuong thuc");
        MyIterator.duyetDS(mhs.iterator());
        System.out.println("///// Truc tiep");
        Iterator<MonHoc> iterator = mhs.iterator();
        while (iterator.hasNext()){
            System.out.println(iterator.next());
        }

        //        duyetMH(mhs.iterator());// duyet qua ham
//        Iterator<MonHoc> iterator1 = mhs.iterator();
//        while (iterator1.hasNext()){
//            System.out.println(iterator1.next());
//        }
    }
}
