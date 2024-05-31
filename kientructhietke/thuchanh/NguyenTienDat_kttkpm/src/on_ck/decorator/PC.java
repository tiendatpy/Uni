package on_ck.decorator;

public abstract class PC {
    String mainBoard, cpu, ram, storage, screen;
    int vMainBoard, vCpu, vRam, vStorage, vScreen;

    public String getMainBoard() {
        return mainBoard;
    }

    public String getCpu() {
        return cpu;
    }

    public String getRam() {
        return ram;
    }

    public String getStorage() {
        return storage;
    }

    public String getScreen() {
        return screen;
    }

    public int getvMainBoard() {
        return vMainBoard;
    }

    public int getvCpu() {
        return vCpu;
    }

    public int getvRam() {
        return vRam;
    }

    public int getvStorage() {
        return vStorage;
    }

    public int getvScreen() {
        return vScreen;
    }
    abstract public String build();
    abstract public int value();
}
