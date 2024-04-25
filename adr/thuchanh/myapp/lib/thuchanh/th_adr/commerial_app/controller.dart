import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/models.dart';

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
    _dssp = AppData().dssp;
    update(["gridview_sp"]);
  }

  themVaoGioHang(Fruit f) {
    for (var fruit in _gioHang) {
      if (fruit.idSP == f.id) {
        fruit.sl++;
        return;
      }
    }
    _gioHang.add(GH_Item(idSP: f.id, sl: 1));
    update(["gh1"]);

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
}

// bindings dùng để quản lý và tạo controller (dependences)
class AppDataBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDataController());
  }
}
