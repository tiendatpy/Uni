package bt_TH.observer.CA1;

import java.util.List;

public class Client implements MyStreamListener<List<MonHoc>>  {
    MyStream stream;

    public Client(MyStream stream) {
        this.stream = stream;
        this.stream.addListeners(this);
    }

    @Override
    public void listen(List<MonHoc> monHocs) {
        for(MonHoc mh : monHocs){
            System.out.println(mh.toString());
        }
    }
}
