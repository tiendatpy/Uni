package bt_TH.observer.CA6;

import java.util.List;

// observer
public class DashBoard implements PlayDataListener {
    PlayerData playerData;

    public DashBoard(PlayerData playerData) {
        this.playerData = playerData;
        /// phuong thuc dang ky
        this.playerData.addListener(this);
    }

    @Override
    public void listen(PlayerData data) {
        System.out.println("Thời gian: " + data.thoiGian + " ,CountDown: " + data.count_down + ", grade: " + data.grade);

    }
}
