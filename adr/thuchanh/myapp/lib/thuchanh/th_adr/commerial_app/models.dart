class Fruit {
  String id;
  String tenSP;
  String? image;
  String? mota;
  int gia;
  Fruit(
      {required this.id,
      this.image,
      required this.tenSP,
      this.mota,
      required this.gia});
}

class GH_Item {
  String idSP;
  int sl;
  GH_Item({required this.idSP, required this.sl});
}

Map<String, String> images = {
  "xoai":
      "https://image.tienphong.vn/w890/Uploaded/2024/rkznae/2020_04_05/qua_xoai_va_nhung_tac_dung_voi_suc_khoe_1_IMRD.jpg",
  "bo":
      "https://caygiongbo.com/datafiles/3/2017-10-05/15071919481380_qua-bo-tang-kha-nang-tinh-duc-1.jpg",
  "nho":
      "https://image.viettimes.vn/1200x630/Uploaded/2024/ovhipuo/2019_11_26/1nho_den_6677263_26112019.jpg",
  "oi":
      "https://hoaquasaykho.net/wp-content/uploads/2019/08/tac-dung-cua-qua-oi-2.jpg",
  "coc":
      "https://storage.googleapis.com/leep_app_website/2021/01/7TYGAzhy-qua-coc-va-vo-van-loi-ich-khong-phai-ai-cung-biet.png",
  "me": "https://cdn.tgdd.vn/2021/06/CookProduct/0-1200x676-32.jpg",
  "man": "https://chanhthu.com/wp-content/uploads/2022/07/man.jpg",
  "dao":
      "https://imagev3.dantocmiennui.vn/w1000/Uploaddtmn/2017/7/6/idaho-peaches_52258301-1.jpg",
  "tao":
      "https://cdn.tgdd.vn/Files/2019/12/19/1227560/qua-tao-co-nhung-loi-ich-gi-dieu-gi-xay-ra-khi-an-2-qua-tao-moi-ngay-202201101724193564.jpeg",
  "duahau":
      "https://images2.thanhnien.vn/528068263637045248/2023/5/5/dua-hau-1683274402212995842181.jpg",
};

class AppData {
  final List<Fruit> _dssp = [
    Fruit(
        id: "01",
        tenSP: "Xoài",
        image: images["xoai"],
        mota: "Xoài cát Hòa Lộc loại 1, xuất sứ Tiền Giang",
        gia: 25000),
    Fruit(
        id: "02",
        tenSP: "Bơ",
        image: images["bo"],
        mota: "Bơ Buôn Mê Thuột",
        gia: 30000),
    Fruit(
        id: "03",
        tenSP: "Nho",
        image: images["nho"],
        mota: "Nho xanh Mỹ Tho",
        gia: 20000),
    Fruit(
        id: "04",
        tenSP: "Ổi",
        image: images["oi"],
        mota: "Ổi xanh ruột hồng",
        gia: 15000),
    Fruit(
        id: "05",
        tenSP: "Cóc",
        image: images["coc"],
        mota: "Cóc non",
        gia: 10000),
    Fruit(
        id: "06",
        tenSP: "Me",
        image: images["me"],
        mota: "Me dốt Hà Giang",
        gia: 25000),
    Fruit(
        id: "07",
        tenSP: "Mận",
        image: images["man"],
        mota: "Mận Khánh Hòa",
        gia: 10000),
    Fruit(
        id: "08",
        tenSP: "Đào",
        image: images["dao"],
        mota: "Đào bắc",
        gia: 15000),
    Fruit(
        id: "09",
        tenSP: "Táo",
        image: images["tao"],
        mota: "Táo mỹ",
        gia: 17000),
    Fruit(
        id: "010",
        tenSP: "Dưa hấu",
        image: images["duahau"],
        mota: "Dưa hấu ruột đỏ",
        gia: 16000),
  ];
  List<Fruit> get dssp => _dssp;
}
