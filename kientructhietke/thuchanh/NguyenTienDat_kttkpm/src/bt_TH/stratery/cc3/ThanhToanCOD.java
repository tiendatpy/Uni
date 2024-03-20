package bt_TH.stratery.cc3;

public class ThanhToanCOD implements IThanhToan{
    @Override
    public double thanhToan(double tongtien) {
        if (tongtien >= 2000000) {
            return tongtien * 0.02;
        }
        return 0;
    }
}
