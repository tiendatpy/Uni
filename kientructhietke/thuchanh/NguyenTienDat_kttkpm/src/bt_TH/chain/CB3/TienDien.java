package bt_TH.chain.CB3;

public abstract class TienDien {
    String tenBac;
    int min, max, gia;

    public TienDien(String tenBac, int min, int max, int gia) {
        this.tenBac = tenBac;
        this.min = min;
        this.max = max;
        this.gia = gia;
    }

    public abstract TienDien bacCaoHon (TienDien t);

    public abstract int tinhTienDien(int soKwh);

}
