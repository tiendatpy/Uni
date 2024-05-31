package bt_TH.observer.CA4;

import java.util.ArrayList;
import java.util.List;

public class ThanhVienB implements TopicListener {

    Topic topic;
    List<TinTuc> listTinTuc = new ArrayList<>();

    public ThanhVienB(Topic topic) {
        this.topic = topic;
        this.topic.dangKy(this);
    }

    public void huyDangKy(){
        topic.huyDangKy(this);
    };


    @Override
    public void listen(TinTuc t) {
        // cap nhat
        for(int i=0; i<listTinTuc.size(); i++){
            if(listTinTuc.get(i).getId() == t.getId()){
                listTinTuc.set(i,t);
                System.out.println(t.toString());
                return;
            }

        }
        // them moi
        listTinTuc.add(t);
        // in danh sách tin tức
        for(int i=0; i<listTinTuc.size(); i++){
            System.out.println(i+1 +". " + listTinTuc.get(i).toString());
        }
    }
}
