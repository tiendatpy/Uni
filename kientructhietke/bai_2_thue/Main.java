package system.on_thi.cuoi_ky.bai_2_thue;

import java.text.NumberFormat;

public class Main {
  public static void main(String[] args) {
    Thue bac1 = new BacThuong("1", 5_000_000, 5, 0);
    Thue bac2 = new BacThuong("2", 10_000_000, 10, 250_000);
    Thue bac3 = new BacThuong("3", 18_000_000, 15, 750_000);
    Thue bac4 = new BacThuong("4", 32_000_000, 20, 1_650_000);
    Thue bac5 = new BacThuong("5", 52_000_000, 25, 3_250_000);
    Thue bac6 = new BacThuong("6", 80_000_000, 30, 5_850_000);
    Thue bac7 = new BacCuoi("7", 80_000_000, 35, 9_850_000);

    bac1.bacCaoHon(bac2).bacCaoHon(bac3).bacCaoHon(bac4).bacCaoHon(bac5).bacCaoHon(bac6).bacCaoHon(bac7);

    int thuNhap = 11_375_000;
    System.out.println("Thu nhập: " + format(thuNhap));
    System.out.print("Thuế tính được: " + format(bac1.tinhThue(thuNhap)));
  }

  static String format(double number) {
    return NumberFormat.getNumberInstance().format(number);
  }
}
