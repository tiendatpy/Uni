class SinhVien {
  String id, ten;
  String? ngaySinh, queQuan;

  SinhVien({required this.id, required this.ten, this.ngaySinh, this.queQuan});
  @override
  String toString(){
    return 'SinhVien{id: $id, ten: $ten, ngaySinh: $ngaySinh, queQuan: $queQuan}';
  }
}
class QLSV{
  List<SinhVien> list = [];
  void add(SinhVien sv){
    list.add(sv);
  }
  void InDS(){
    list.forEach((sv) {
      print(sv.toString());
     });
  }
  void InDS2(){
    for(var sv in list)
      print(sv.toString());
  }
}
void main(){
  SinhVien sv1 = SinhVien(id: "01", ten: "Tien Dat", ngaySinh: "01/01/2023", queQuan: "Nha Trang");
  SinhVien sv2 = SinhVien(id: "02", ten: "Tien Dat2", ngaySinh: "02/01/2023", queQuan: "Nha Trang");
  QLSV qlsv = QLSV();
  qlsv.add(sv1);
  qlsv.add(sv2);
  qlsv.InDS();
  qlsv.InDS2();
  // Chuyển danh sách các số nguyên thành danh sách bình phương các số nguyên
  List<int> listInt = [4, 6, 7, 8];
  List<int> listBinhPhuong = listInt.map((SoNguyen) => SoNguyen*SoNguyen).toList();
  print(listInt);
  print(listBinhPhuong);
}