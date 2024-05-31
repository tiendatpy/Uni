package bt_TH.composite.b4;

public abstract class KeHoachHocTap {
    protected String ten;
    abstract void add(KeHoachHocTap k);
    abstract void remove(KeHoachHocTap k);
    abstract int getSoTC();
    abstract int getHP();

    abstract String thongTin(String sep);

    public KeHoachHocTap(String ten) {
        this.ten = ten;
    }
}
