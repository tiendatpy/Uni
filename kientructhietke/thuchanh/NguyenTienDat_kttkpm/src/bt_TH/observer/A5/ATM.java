package bt_TH.observer.A5;


// subject
public class ATM {
    TaiKhoanATM theATM;
    public void nhanThe(TaiKhoanATM theATM){
        this.theATM = theATM;
    };
    public void traThe(TaiKhoanATM atm){
        this.theATM = null;
    };
    public void rutTien(int soTien){
        if(theATM != null){
            if(theATM.kiemTraSoDu(soTien) == true){
                theATM.nhanThongBao(soTien, true);
            }
            else
                theATM.nhanThongBao(soTien, false);
        }
        else {
            System.out.println("Khong co the trong may");
        }
    };
}
