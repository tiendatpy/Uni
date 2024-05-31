package bt_TH.chain.CB4;

import java.util.List;

public class GiaiThongThuong extends GiaiThuong{
    public GiaiThongThuong(String tenGiai, List<String> boSo) {
        super(tenGiai, boSo);
    }

    GiaiThuong giaiKeTiep;

    @Override
    public GiaiThuong giaiKeTiep(GiaiThuong t) {
        giaiKeTiep = t;
        return giaiKeTiep;
    }

    @Override
    public void doVeSo(String veSo) {
        for(String x : boSo){
            if(x.endsWith(veSo)){
                System.out.println("Đã trúng " + tenGiai);
                return;
            }
        }
        giaiKeTiep.doVeSo(veSo);
    }
}
