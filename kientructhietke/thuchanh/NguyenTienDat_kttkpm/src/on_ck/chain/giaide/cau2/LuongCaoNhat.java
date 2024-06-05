package on_ck.chain.giaide.cau2;

public class LuongCaoNhat extends ThuNhap{
    public LuongCaoNhat(int max, float thue) {
        super(max, thue);
    }

    @Override
    ThuNhap bacCaoHon(ThuNhap tn) {
        return this;
    }

    @Override
    int tinhThue(int tienLuong) {
        return (int)(tienLuong * thue);
    }
}
