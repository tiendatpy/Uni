package bt_TH.chain.CB3;

public class BacThongThuong extends TienDien{
    public BacThongThuong(String tenBac, int min, int max, int gia) {
        super(tenBac, min, max, gia);
    }

    TienDien bacKe;

    @Override
    public TienDien bacCaoHon(TienDien t) {
        bacKe = t;
        return bacKe;
    }


    @Override
    public int tinhTienDien(int sokWh) {
        if(sokWh <= max){
            return (sokWh - min) * gia;
        }
        return (max - min) * gia + bacKe.tinhTienDien(sokWh);
    }
}
