package bt_TH.observer.CA4;

import java.util.ArrayList;
import java.util.List;

public class Topic {
    // list tin tuc dc khoi tao trc ? (ben ngoai)
    List<TinTuc> listTinTuc = new ArrayList<>();
    // list listeners ko can khoi tao
    List<TopicListener> listeners = new ArrayList<>();
    void dangKy(TopicListener listener){
        listeners.add(listener);
    };
    void huyDangKy(TopicListener listener){
        listeners.remove(listener);
    };
    void taoTinMoi(TinTuc t){
        listTinTuc.add(t);
        for(var x : listeners){
            x.listen(t);
        }

    };
    void capNhat(TinTuc t){
        for(int i=0; i< listTinTuc.size(); i++){
            if(listTinTuc.get(i).getId() == t.getId()){
                listTinTuc.set(i, t);
                for(var x : listeners){
                    x.listen(t);
                }
                return;
            }
        }
    };
}
