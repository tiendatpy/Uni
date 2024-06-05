package on_ck.observer.CA6;


// concrete observer
public class DashBoard implements PlayerDataListener {
    PlayerData playerData;

    public DashBoard(PlayerData playerData) {
        this.playerData = playerData;
        this.playerData.addListener(this);
    }

    @Override
    public void listen(PlayerData player) {
        System.out.println("Thoi gian: " + player.thoiGian);
        System.out.println("Countdown: "+ player.countDown);
        System.out.println("Diem: " + player.grade);

    }
}
