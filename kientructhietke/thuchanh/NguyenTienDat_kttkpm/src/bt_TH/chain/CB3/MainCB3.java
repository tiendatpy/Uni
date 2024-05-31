package bt_TH.chain.CB3;

public class MainCB3 {
    public static void main(String[] args) {
        BacThongThuong b1 = new BacThongThuong("bậc 1",0,50, 1_806);
        BacThongThuong b2 = new BacThongThuong("bậc 2",50,100, 1_886);
        BacThongThuong b3 = new BacThongThuong("bậc 3",100,200, 2_167);
        BacThongThuong b4 = new BacThongThuong("bậc 4",200,300, 2_729);
        BacThongThuong b5 = new BacThongThuong("bậc 5",300,400, 3_050);
        BacThongThuong b6 = new BacThongThuong("bậc 6",400,100000, 3_151);

        b1.bacCaoHon(b2)
                .bacCaoHon(b3)
                .bacCaoHon(b4)
                .bacCaoHon(b5)
                .bacCaoHon(b6);

        System.out.println("Tổng tiền điện: " + b1.tinhTienDien(175));
    }
}
