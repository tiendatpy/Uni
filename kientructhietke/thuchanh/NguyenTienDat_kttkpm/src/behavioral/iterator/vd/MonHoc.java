package behavioral.iterator.vd;

public class MonHoc {
    String ten;
    int stc;

    public MonHoc(String ten, int stc) {
        this.ten = ten;
        this.stc = stc;
    }

    @Override
    public String toString() {
        return
                "ten='" + ten + '\'' +
                ", stc=" + stc
                ;
    }
}
