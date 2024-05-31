package bt_TH.observer.CA6;

import java.util.ArrayList;
import java.util.List;

//subject
public class PlayerData {
    public PlayerData(int thoiGian, int count_down, int grade) {
        this.thoiGian = thoiGian;
        this.count_down = count_down;
        this.grade = grade;
    }

    int thoiGian;
    int count_down;
    int grade;
    PlayDataListener listener;
    public void addListener(PlayDataListener listener){
        this.listener = listener;
    }

    public void setThoiGian(int thoiGian) {
        this.thoiGian = thoiGian;
        listener.listen(this);
    }

    public void setCount_down(int count_down) {
        this.count_down = count_down;
        listener.listen(this);


    }

    public void setGrade(int grade) {
        this.grade = grade;
        listener.listen(this);

    }
}
