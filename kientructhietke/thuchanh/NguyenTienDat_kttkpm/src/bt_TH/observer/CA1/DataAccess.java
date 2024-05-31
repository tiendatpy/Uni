package bt_TH.observer.CA1;

import java.util.ArrayList;
import java.util.List;

public class DataAccess {
    public DataAccess(MyStream<List<MonHoc>> stream) {
        this.stream = stream;
    }

    List<MonHoc> list = new ArrayList<>();
    MyStream<List<MonHoc>> stream;

    public void add(MonHoc mh){
        list.add(mh);
        stream.addEvent(list);
    }

    public void delete(MonHoc mh){
        list.remove(mh);
        stream.addEvent(list);
    }

}
