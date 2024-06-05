package on_ck.observer.CA6;


// subject
public class PlayerData {
    public PlayerData(int thoiGian, int countDown, float grade) {
        this.thoiGian = thoiGian;
        this.countDown = countDown;
        this.grade = grade;
    }

    int thoiGian, countDown;
    float grade;
    PlayerDataListener listener;
    void addListener(PlayerDataListener listener){
        this.listener = listener;
    }

    public void setThoiGian(int thoiGian) {
        this.thoiGian = thoiGian;
        listener.listen(this);
    }

    public void setCountDown(int countDown) {
        this.countDown = countDown;
        listener.listen(this);
    }

    public void setGrade(float grade) {
        this.grade = grade;
        listener.listen(this);
    }
}
