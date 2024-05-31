package bt_TH.observer.CA1;

import java.util.List;

public class MainCA1 {
    public static void main(String[] args) {
        MyStream<List<MonHoc>> stream = new MyStream<>();
        DataAccess dataAccess = new DataAccess(stream);
        Client client = new Client(stream);

        MonHoc mh1 = new MonHoc("01", "Dai So", 2);
        MonHoc mh2 = new MonHoc("02", "Giai Tich", 2);
        System.out.println("Lan 1");
        dataAccess.add(mh1);
        System.out.println("Lan 2");
        dataAccess.add(mh2);
        System.out.println("Lan 3");
        dataAccess.delete(mh1);
    }
}
