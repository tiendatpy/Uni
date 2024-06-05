package on_ck.observer.CA6;

public class MainCA6 {
    public static void main(String[] args) {
        PlayerData player = new PlayerData(50,10,450);
        DashBoard dashBoard = new DashBoard(player);
        System.out.println("Lan 1");
        player.setCountDown(20);
        System.out.println("Lan 2");
        player.setGrade(30);
    }
}
