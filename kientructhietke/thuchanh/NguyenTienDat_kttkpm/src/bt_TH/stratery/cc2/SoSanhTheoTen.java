package bt_TH.stratery.cc2;
public class SoSanhTheoTen implements ISoSanh<SinhVien>{

    @Override
    public int SoSanh(SinhVien t1, SinhVien t2) {
        return t1.getHoTen().compareTo(t2.getHoTen());
    }
}
