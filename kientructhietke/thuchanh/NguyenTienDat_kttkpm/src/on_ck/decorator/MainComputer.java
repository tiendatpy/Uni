package on_ck.decorator;

public class MainComputer {
    public static void main(String[] args) {
        PC pc = new ConcretePC("Asus Prime", "i5, 1335U, 1.3GHz","8GB","256GB", "16inch", 100,200,300,400, 500);
        System.out.println(pc.build());
        System.out.println("Tổng tiền: " + pc.value());
        pc = new UpgradeCPU(pc, "i9", 300);
        System.out.println("------");
        System.out.println(pc.build());
        System.out.println("Tổng tiền: " + pc.value());
        pc = new UpgradeCPU(pc, "i10", 300);
        System.out.println("------");
        System.out.println(pc.build());
        System.out.println("Tổng tiền: " + pc.value());

    }
}
