package bt_TH.chain.CB1;

public abstract class ChuoiMenhGiaFactory {
    public abstract ATM_TheoMenhGia getChuoiMenhgia(int menhGia);
    public void rutTien(int soTien, int menhGiaCaoNhat){
        getChuoiMenhgia(menhGiaCaoNhat).rutTien(soTien);
    }
}
