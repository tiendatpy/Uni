package bt_TH.J3;

public abstract class SinhVienPoly {
    public String hoTen;
    public String nganh;

    public abstract double getDiem();

    public SinhVienPoly(String hoTen, String nganh) {
        this.hoTen = hoTen;
        this.nganh = nganh;
    }

    public String hocLuc(){
        if (getDiem() < 5){
            return "Yếu";
        }
        if (getDiem() < 6.5 && getDiem() >= 5){
            return "Trung bình";
        }
        if (getDiem() >=6.5 && getDiem() < 7.5){
            return "Khá";
        }
        if (getDiem() >= 7.5 && getDiem() < 9) {
            return "Gioi";
        }
        return "Xuất sắc";
    }
    public void Xuat(){
        System.out.println("Họ tên: " + hoTen + "\nNgành học: " + nganh);
    }
}
