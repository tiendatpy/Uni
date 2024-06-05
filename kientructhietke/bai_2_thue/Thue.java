package system.on_thi.cuoi_ky.bai_2_thue;

public abstract class Thue {
  String tenBac;
  int mucChiuThue, thueSuat, tienTru;

  public Thue(String tenBac, int mucChiuThue, int thueSuat, int tienTru) {
    this.tenBac = tenBac;
    this.mucChiuThue = mucChiuThue;
    this.thueSuat = thueSuat;
    this.tienTru = tienTru;
  }

  public abstract Thue bacCaoHon(Thue thue);

  public abstract double tinhThue(int thuNhap);
}
