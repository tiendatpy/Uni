package system.on_thi.cuoi_ky.bai_2_thue;

public class BacCuoi extends Thue {
  public BacCuoi(String tenBac, int mucChiuThue, int thueSuat, int tienTru) {
    super(tenBac, mucChiuThue, thueSuat, tienTru);
  }

  @Override
  public Thue bacCaoHon(Thue thue) {
    return this;
  }

  @Override
  public double tinhThue(int thuNhap) {
    return (double) (thuNhap * thueSuat / 100 - tienTru);
  }
}
