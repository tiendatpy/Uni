package bt_TH.chain.CB1;

public class MenhGiaThapNhat extends ATM_TheoMenhGia{

    public MenhGiaThapNhat(int menhGia) {
        super(menhGia);
    }

    @Override
    public ATM_TheoMenhGia keTiep(ATM_TheoMenhGia k) {
        return this;
    }

    @Override
    public void rutTien(int soTien) {
        int soTo = soTien / menhGia;
        System.out.println(soTo + " tờ mệnh giá " + menhGia);
    }


}
