package on_ck.chain.giaide.cau2;

public abstract class ThuNhap {
    int max;
    float thue;

    public ThuNhap(int max, float thue) {
        this.max = max;
        this.thue = thue;
    }

    abstract ThuNhap bacCaoHon(ThuNhap tn);
    abstract int tinhThue(int tienLuong);
}
