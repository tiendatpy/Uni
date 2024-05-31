package bt_TH.chain.CB3;

public class BacCaoNhat extends TienDien{
    public BacCaoNhat(String tenBac, int min, int max, int gia) {
        super(tenBac, min, max, gia);
    }
    @Override
    public TienDien bacCaoHon(TienDien t) {
        return this;
    }

    @Override
    public int tinhTienDien(int soKwh) {
        return (soKwh - min) * gia;
    }


}
