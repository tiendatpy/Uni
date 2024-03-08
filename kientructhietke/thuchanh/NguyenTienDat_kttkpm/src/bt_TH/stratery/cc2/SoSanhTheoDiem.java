package bt_TH.stratery.cc2;

public class SoSanhTheoDiem implements ISoSanh <SinhVien>{
    @Override
    public int SoSanh(SinhVien sv1, SinhVien sv2) {
        if(sv1.getDiemTB()>sv2.getDiemTB()){
            return 1;
        } else if (sv1.getDiemTB() < sv2.getDiemTB()) {
            return -1;
        }
        else return 0;
    }
}
