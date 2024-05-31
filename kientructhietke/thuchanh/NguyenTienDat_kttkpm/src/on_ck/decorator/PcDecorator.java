package on_ck.decorator;

public abstract class PcDecorator extends PC{
    PC pc;
    public PcDecorator(PC pc) {
        this.pc = pc;
    }
    @Override

    public String getMainBoard() {
        return pc.mainBoard;
    }
    @Override

    public String getCpu() {
        return pc.cpu;
    }
    @Override

    public String getRam() {
        return pc.ram;
    }
    @Override

    public String getStorage() {
        return pc.storage;
    }
    @Override

    public String getScreen() {
        return pc.screen;
    }
    @Override

    public int getvMainBoard() {
        return pc.vMainBoard;
    }
    @Override

    public int getvCpu() {
        return pc.vCpu;
    }
    @Override

    public int getvRam() {
        return pc.vRam;
    }
    @Override

    public int getvStorage() {
        return pc.vStorage;
    }
    @Override

    public int getvScreen() {
        return pc.vScreen;
    }
}
