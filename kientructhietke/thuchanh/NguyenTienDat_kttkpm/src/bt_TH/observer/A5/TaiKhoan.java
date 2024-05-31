package bt_TH.observer.A5;


// observer
public class TaiKhoan implements TaiKhoanATM {
    int soDu;
    String tenTK;

    ATM atm;

    public TaiKhoan(int soDu, String tenTK, ATM atm) {
        this.soDu = soDu;
        this.tenTK = tenTK;
        this.atm = atm;
    }

    public void duaTheoVaoATM(){
        atm.nhanThe(this);
    };
    public void rutTheKhoiATM(){
        atm.traThe(this);
    };

    @Override
    public boolean kiemTraSoDu(int soTien) {
        return soDu - soTien >= 50_000 ? true : false;
    }

    @Override
    public void nhanThongBao(int soTienRut, boolean thanhCong) {
        if(thanhCong) {
            System.out.println("Tài khoản:" + tenTK);
            System.out.println("Số dư ban đầu: " + soDu);
            System.out.println("Số tiền rút: " + soTienRut);
            soDu = soDu - soTienRut;
            System.out.println("Số tiền còn lại: " + soDu );
        }
        else{
            System.out.println("Tài khoản: " + tenTK);
            System.out.println("Số dư:" + soDu);
            System.out.println("Không đủ tiền để rút");
        }

    }
}
