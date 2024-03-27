package on_gk.builder.A7;

public class MainA7 {
    public static void main(String[] args) {
        Computer c = new Computer.Builder().addCPU("Intel core i5")
                .addRam("8GB")
                .addScreen("15,5 inch")
                .addHardDisk("512GB")
                .build();
        System.out.println(c);
    }
}
