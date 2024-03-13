import 'package:flutter/foundation.dart';

class AppGioHangState extends ChangeNotifier {
  final List<String> _dssp = [
    "Xoai",
    "Buoi",
    "Mit",
    "Coc",
    "Oi",
    "Me",
    "Xoai",
    "Buoi",
    "Mit",
    "Coc",
    "Oi",
    "Me"
  ];
  final List<int> cost = [
    100,
    200,
    300,
    400,
    500,
    600,
    800,
    900,
    1000,
    100,
    500,
    400
  ];
  final List<int> _gioHang = [];
  final int _soLuongMHGH = 0;
  List<String> get dssp => _dssp;
  List<int> get gioHang => _gioHang;
  int get soLuongMHGH => _gioHang.length;
  themVaoGioHang(int index) {
    if (kiemTraMH_CoTrongGH(index) == false) {
      _gioHang.add(index);
      notifyListeners();
    }
  }

  bool kiemTraMH_CoTrongGH(int index) {
    for (int i = 0; i < gioHang.length; i++) {
      if (gioHang[i] == index) {
        return true;
      }
    }
    return false;
  }

  xoaGioHang(int index) {
    gioHang.removeAt(index);
    notifyListeners();
  }
}
