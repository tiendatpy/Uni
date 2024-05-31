package bt_TH.chain.CB1;

public class MenhGia extends ATM_TheoMenhGia{
    ATM_TheoMenhGia keTiep;

    public MenhGia(int menhGia) {
        super(menhGia);
    }

    @Override
    public ATM_TheoMenhGia keTiep(ATM_TheoMenhGia k) {
        keTiep = k;
        return keTiep;
    }

    @Override
    public void rutTien(int soTien) {
        int soTo = soTien / menhGia;
        int soDu = soTien % menhGia;
        if(soTo > 0){
            System.out.println(soTo + " tờ mệnh giá " + menhGia);
        }
        if (soDu > 0){
            keTiep.rutTien(soDu);
        }
    }
}
