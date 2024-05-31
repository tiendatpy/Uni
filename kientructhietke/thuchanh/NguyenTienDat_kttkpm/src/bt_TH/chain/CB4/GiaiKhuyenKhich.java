package bt_TH.chain.CB4;

import java.util.List;

public class GiaiKhuyenKhich extends GiaiThuong{
    public GiaiKhuyenKhich(String tenGiai, List<String> boSo) {
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
        int cnt = 0;
        for(String x : boSo){
            String sub = veSo.substring(veSo.length() - x.length());
            for(int i=0; i< sub.length(); i++){
                if(sub.charAt(i) == x.charAt(i))
                    cnt++;
            }
            if(cnt == x.length()-1){
                System.out.println("Đã trúng giải khuyến khích");
            }
            if(x.endsWith(veSo)){
                System.out.println("Đã trúng " + tenGiai);
                return;
            }
        }
        giaiKeTiep.doVeSo(veSo);
    }
}
