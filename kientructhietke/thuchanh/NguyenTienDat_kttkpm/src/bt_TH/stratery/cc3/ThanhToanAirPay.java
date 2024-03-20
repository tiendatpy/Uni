package bt_TH.stratery.cc3;

public class ThanhToanAirPay implements IThanhToan{

    @Override
    public double thanhToan(double tongtien) {
        if (tongtien >= 1000000) {
            return tongtien * 0.03;
        }
        return 0;
    }
}
