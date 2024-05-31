package bt_TH.chain.CB1;

public abstract class ATM_TheoMenhGia {
    int menhGia;

    public ATM_TheoMenhGia(int menhGia) {
        this.menhGia = menhGia;
    }

    public abstract ATM_TheoMenhGia keTiep(ATM_TheoMenhGia k);
    public abstract void rutTien(int soTien);
}
