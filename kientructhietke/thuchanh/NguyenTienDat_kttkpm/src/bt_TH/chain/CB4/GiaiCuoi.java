package bt_TH.chain.CB4;

import java.util.List;

public class GiaiCuoi extends GiaiThuong{
    public GiaiCuoi(String tenGiai, List<String> boSo) {
        super(tenGiai, boSo);
    }

    @Override
    public GiaiThuong giaiKeTiep(GiaiThuong t) {
        return this;
    }

    @Override
    public void doVeSo(String veSo) {
        for(String x : boSo){
            if(x.endsWith(veSo)){
                System.out.println("Đã trúng " + tenGiai);
                return;
            }
        }
        System.out.println("Chúc bạn may mắn lần sau");
    }
}
