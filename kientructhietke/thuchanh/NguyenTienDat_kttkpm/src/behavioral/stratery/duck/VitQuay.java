package behavioral.stratery.duck;

public class VitQuay extends Duck{

    @Override
    public void display() {
        System.out.println("Vịt quay bao giòn, thơm ngon bổ rẻ");
        performFly();
        performQuack();
        System.out.println("Chúc ngon miệng");
    }
}
