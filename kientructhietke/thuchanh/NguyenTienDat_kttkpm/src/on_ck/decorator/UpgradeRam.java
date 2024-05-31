package on_ck.decorator;

public class UpgradeRam extends PcDecorator{
    String nRam;
    int nvRam;

    public UpgradeRam(PC pc, String nRam, int nvRam) {
        super(pc);
        this.nRam = nRam;
        this.nvRam = nvRam;
    }

    @Override
    public String build() {
        StringBuilder builder = new StringBuilder();
        builder.append(pc.build());
        builder.append("Nâng cấp Ram thêm:" ).append(nRam);
        return builder.toString();
    }

//    @Override
//    public String getRam() {
//        return super.getRam() + " "+ nRam;
//    }
//
//    @Override
//    public int getvRam() {
//        return super.getvRam();
//    }

    @Override
    public int value() {
        return pc.value() + nvRam;
    }
}
