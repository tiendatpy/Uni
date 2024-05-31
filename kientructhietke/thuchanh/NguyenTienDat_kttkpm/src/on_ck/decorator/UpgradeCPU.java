package on_ck.decorator;

public class UpgradeCPU extends PcDecorator{
    String nCPU;
    int nvCPU;

    public UpgradeCPU(PC pc, String nCPU, int nvCPU) {
        super(pc);
        this.nCPU = nCPU;
        this.nvCPU = nvCPU;
    }

    @Override
    public String build() {
        pc.cpu = nCPU;
        StringBuilder builder = new StringBuilder();
        builder.append(pc.build());
        builder.append("Nâng cấp CPU thêm:" ).append(nCPU);
        return builder.toString();
    }


    @Override
    public int value() {
        return pc.value() - pc.getvCpu() + nvCPU;
    }


}
