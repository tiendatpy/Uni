package bt_TH.chain.CB4;

import java.util.ArrayList;
import java.util.List;

public abstract class GiaiThuong {
    String tenGiai;
    List<String> boSo;
    public GiaiThuong(String tenGiai, List<String> boSo) {
        this.tenGiai = tenGiai;
        this.boSo = boSo;
    }
    public abstract GiaiThuong giaiKeTiep(GiaiThuong t);
    public abstract void doVeSo(String veSo);
}
