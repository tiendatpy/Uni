package behavioral.stratery.duck;

public class MainDuck {
    public static void main(String[] args) {
        Duck duck = new VitQuay();
        Duck duck2 = new VitQuay();
        duck.setFlyable(new BayTrenLoThan());
        duck.setQuackable(new VitQuayKeu());
        duck2.setFlyable(new BayTrenKhongTrung());
        System.out.println("Con vit bay tren khong trung : " + duck2.getFlyable());
        duck.display();
    }
}
