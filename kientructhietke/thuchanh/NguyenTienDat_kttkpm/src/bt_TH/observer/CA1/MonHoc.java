package bt_TH.observer.CA1;

public class MonHoc {
    public MonHoc(String maMH, String tenMH, int soTC) {
        this.maMH = maMH;
        this.tenMH = tenMH;
        this.soTC = soTC;
    }

    String maMH, tenMH;
    int soTC;

    @Override
    public String toString() {
        return "MonHoc{" +
                "maMH='" + maMH + '\'' +
                ", tenMH='" + tenMH + '\'' +
                ", soTC=" + soTC +
                '}';
    }
}
