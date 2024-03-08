package bt_TH.J12;

public class mainNhanVien {
    public static void main(String[] args){
    NhanVien nv1 = new NhanVien();
    NhanVien nv2 = new NhanVien("Đạt","20","Ninh Hòa",100,100);
//        System.out.println(nv1.toString());
//        System.out.println(nv2.toString());
    NhanVien nv3 = new NhanVien("Đạt","20","Nha Trang",100,100);
    NhanVien nv4 = new NhanVien("Đạt1","20","Bến Tre",50,200);
    NhanVien nv5 = new NhanVien("Đạt2","20","Cà Mau",20.5,400);

    QuanLyNhanVien qlnv = new QuanLyNhanVien();
    qlnv.them(nv1);
    qlnv.them(nv2);
    qlnv.them(nv3);
    qlnv.them(nv4);
    qlnv.them(nv5);
//    In ds
    qlnv.inDS();
    }
}
