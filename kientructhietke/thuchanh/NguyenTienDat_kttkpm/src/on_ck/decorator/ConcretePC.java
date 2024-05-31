package on_ck.decorator;

public class ConcretePC extends PC{
    public ConcretePC(String mainBoard, String cpu, String ram, String storage, String screen, int vMainBoard, int vCpu, int vRam, int vStorage, int vScreen) {
        this.mainBoard = mainBoard;
        this.cpu = cpu;
        this.ram = ram;
        this.storage = storage;
        this.screen = screen;
        this.vMainBoard = vMainBoard;
        this.vCpu = vCpu;
        this.vRam = vRam;
        this.vStorage = vStorage;
        this.vScreen = vScreen;
    }

    @Override
    public String build() {
        StringBuilder builder = new StringBuilder();
        builder.append("Mainboard: " + mainBoard + "\n")
                .append("CPU: " + cpu + "\n")
                .append("RAM: " + ram + "\n")
                .append("Storage: " + storage + "\n")
                .append("Screen: " + screen + "\n");
        return builder.toString();
    }

    @Override
    public int value() {
        return vMainBoard + vCpu + vRam +vStorage + vScreen;
    }
}
