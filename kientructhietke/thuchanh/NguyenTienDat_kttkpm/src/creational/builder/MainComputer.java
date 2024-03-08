package creational.builder;

public class MainComputer {
    public static void main(String[] args) {
        Computer c = new Computer.Builder()
                .addCPU("I5")
                .addRam("DDR5 6480")
                .addStorage("2TB NVMe5 Samsung")
                .addScreen("24 inch RBG 360Hz")
                .build();
        System.out.println(c.toString());
    }
}
