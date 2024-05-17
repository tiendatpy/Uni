// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:get/get.dart';
import 'package:tiendat_firebase/fruits_firebase/model/model.dart';

// su dung slidedable
class AppDataController extends GetxController {
  List<Fruit> _dssp = [];
  List<Fruit> get dssp => _dssp;

  final _gioHang = <GH_Item>[];
  List<GH_Item> get gioHang => _gioHang;

  int get slMatHangGH => gioHang.length;
  static AppDataController get instance => Get.find<AppDataController>();
  @override
  void onReady() {
    super.onReady();
    docDL();
  }

  Future<void> docDL() async {
    var list = await FruitSnapShot.getAll2();
    _dssp = list.map((fruitSnapShot) => fruitSnapShot.fruit).toList();
  }

  themVaoGioHang(Fruit f) {
    for (var fruit in _gioHang) {
      if (fruit.idSP == f.id) {
        fruit.sl++;
        print(fruit.sl);
        return;
      }
    }
    _gioHang.add(GH_Item(idSP: f.id, sl: 1));
    update(["gh1"]);
    update(['tongtien']);

    // * test
    print("Đã thêm vào giỏ");
    for (var fruit in gioHang) {
      print("id: ${fruit.idSP} + " "sl: ${fruit.sl}");
    }
    print("Số lượng item:" "${gioHang.length}");
    // *end test
  }

  xoaItem(Fruit f) {
    for (var i = 0; i < _gioHang.length; i++) {
      if (_gioHang[i].idSP == f.id) {
        _gioHang.removeAt(i);
        update(["gh1"]);
        update(['tongtien']);
        return;
      }
    }
  }

  Fruit? getIdFromCard(GH_Item c) {
    for (var sp in dssp) {
      if (sp.id == c.idSP) {
        return sp;
      }
    }
    return null;
  }

  // xu ly cong tru so luong
  void tang(int index) {
    gioHang[index].sl++;
    priceOfItem(index);
    update(["gh1"]);
    update(["tongtien"]);
  }

  void giam(int index) {
    if (gioHang[index].sl > 1) {
      gioHang[index].sl--;
      priceOfItem(index);
      update(["gh1"]);
      update(["tongtien"]);
    }
  }

  int priceOfItem(int index) {
    int price = getIdFromCard(gioHang[index])!.gia;
    int sl = gioHang[index].sl;
    int sumOfItem = price * sl;
    return sumOfItem;
  }

  int sumOfPrice() {
    int sum = 0;
    for (var i = 0; i < _gioHang.length; i++) {
      sum += priceOfItem(i);
    }
    return sum;
  }
}

// bindings dùng để quản lý và tạo controller (dependences)
class AppDataBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDataController());
  }
}
