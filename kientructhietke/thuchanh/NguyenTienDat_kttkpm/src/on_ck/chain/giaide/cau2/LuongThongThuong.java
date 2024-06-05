package on_ck.chain.giaide.cau2;

public class LuongThongThuong extends ThuNhap{
    public LuongThongThuong(int max, float thue) {
        super(max, thue);
    }

    ThuNhap caoHon;
    @Override
    ThuNhap bacCaoHon(ThuNhap tn) {
        caoHon = tn;
        return caoHon;
    }

    @Override
    int tinhThue(int tienLuong) {
        if(tienLuong <= max){
           return (int)(tienLuong * thue);
        }
        return caoHon.tinhThue((int)(tienLuong)) - (int)(tienLuong * thue);
    }
}
