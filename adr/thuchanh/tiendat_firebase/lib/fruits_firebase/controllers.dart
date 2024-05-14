// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:get/get.dart';
import 'package:tiendat_firebase/fruits_firebase/model.dart';

// su dung slidedable
class AppDataController extends GetxController {
  List<Fruit> _dssp = [];
  List<Fruit> get dssp => _dssp;

  // final _gioHang = <GH_Item>[];
  // List<GH_Item> get gioHang => _gioHang;

  // int get slMatHangGH => gioHang.length;
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
}

// bindings dùng để quản lý và tạo controller (dependences)
class AppDataBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDataController());
  }
}
