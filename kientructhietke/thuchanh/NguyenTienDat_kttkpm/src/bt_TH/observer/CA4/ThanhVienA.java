package bt_TH.observer.CA4;

public class ThanhVienA implements TopicListener{
    Topic topic;

    public ThanhVienA(Topic topic) {
        this.topic = topic;
        this.topic.dangKy(this);
    }

    public void huyDangKy(){
        topic.huyDangKy(this);
    };

    @Override
    public void listen(TinTuc t) {
        System.out.println(t.toString());
    }
}
