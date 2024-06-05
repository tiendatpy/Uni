package system.on_thi.cuoi_ky.bai_2_thue;

public class BacThuong extends Thue {
  private Thue thue;

  public BacThuong(String tenBac, int mucChiuThue, int thueSuat, int tienTru) {
    super(tenBac, mucChiuThue, thueSuat, tienTru);
  }

  @Override
  public Thue bacCaoHon(Thue thue) {
    this.thue = thue;
    return thue;
  }

  @Override
  public double tinhThue(int thuNhap) {
    if (thuNhap <= mucChiuThue) {
      return (double) (thuNhap * thueSuat / 100 - tienTru);
    } else {
      return thue.tinhThue(thuNhap);
    }
  }
}
