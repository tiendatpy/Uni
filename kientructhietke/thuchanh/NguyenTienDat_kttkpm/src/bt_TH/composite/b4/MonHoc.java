package bt_TH.composite.b4;

public class MonHoc extends KeHoachHocTap {
    int hocPhi;
    int soTC;

    public MonHoc(String ten, int hocPhi, int soTC) {
        super(ten);
        this.hocPhi = hocPhi;
        this.soTC = soTC;
    }

    @Override
    void add(KeHoachHocTap k) {

    }

    @Override
    void remove(KeHoachHocTap k) {

    }

    @Override
    int getSoTC() {
        return soTC;
    }

    @Override
    int getHP() {
        return soTC * hocPhi;
    }

    @Override
    String thongTin(String sep) {
        StringBuilder builder = new StringBuilder();
        builder.append(ten)
                .append(", Số TC: ").append(getSoTC())
                .append(", Học phí: ").append(getHP());
        return builder.toString();
    }
}
