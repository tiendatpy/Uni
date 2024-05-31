package bt_TH.chain.CB1;

public class ChuoiMenhGia extends ChuoiMenhGiaFactory {
    ATM_TheoMenhGia mg500 = new MenhGia(500);
    ATM_TheoMenhGia mg100 = new MenhGia(100);
    ATM_TheoMenhGia mg50 = new MenhGia(50);
    ATM_TheoMenhGia mg10 = new MenhGia(10);
    ATM_TheoMenhGia mg1 = new MenhGiaThapNhat(1);

    @Override
    public ATM_TheoMenhGia getChuoiMenhgia(int menhGia) {
        switch (menhGia){
            case 500:
                return mg500;
            case 100:
                return mg100;
            case 50:
                return mg50;
            case 10:
                return mg10;
            default:
                return  mg1;
        }
    }

    public ChuoiMenhGia() {
        mg500.keTiep(mg100)
                .keTiep(mg100)
                .keTiep(mg50)
                .keTiep(mg10)
                .keTiep(mg1);
    }
}
