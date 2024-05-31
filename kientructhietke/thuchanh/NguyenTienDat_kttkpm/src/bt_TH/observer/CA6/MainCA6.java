package bt_TH.observer.CA6;

public class MainCA6 {
    public static void main(String[] args) {
        PlayerData playerData = new PlayerData(50, 2, 800);
        DashBoard dashBoard = new DashBoard(playerData);
        System.out.println("Lan 1");
        playerData.setThoiGian(20);
        System.out.println("Lan 2");
        playerData.setThoiGian(40);
        playerData.setGrade(100);
    }
}
