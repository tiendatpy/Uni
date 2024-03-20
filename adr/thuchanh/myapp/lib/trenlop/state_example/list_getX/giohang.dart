import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;
import 'package:myapp/trenlop/state_example/list_getX/qlgiohang.dart';

class GioHangController extends GetxController {
  final _dssp = <String>[
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
  ].obs;
  final cost =
      <int>[100, 200, 300, 400, 500, 600, 800, 900, 1000, 100, 500, 400].obs;
  final _gioHang = <int>[].obs;
  // final _soLuongMHGH = 0.obs;
  // Getter for _dssp
  List<String> get dssp => _dssp;

  // Getter for _gioHang
  List<int> get gioHang => _gioHang;

  // Getter for _soLuongMHGH
  // int get soLuongMHGH => _soLuongMHGH.value;
  themVaoGioHang(int index) {
    if (kiemTraMH_CoTrongGH(index) == false) {
      _gioHang.add(index);
      update();
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
    update();
  }
}

class GioHangGetX extends StatelessWidget {
  GioHangGetX({super.key});
  final c = Get.put(GioHangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruit Store get X"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: badges.Badge(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => InGioHang()));
              },
              badgeContent: Obx(() => Text("${c.gioHang.length}")),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(c.dssp[index]),
            subtitle: Text("Giá: ${c.cost[index]}.000đ"),
            trailing: IconButton(
              icon: Obx(
                () => c.kiemTraMH_CoTrongGH(index) == false
                    ? const Icon(Icons.add)
                    : const Icon(Icons.check),
              ),
              onPressed: () {
                c.themVaoGioHang(index);
              },
            ),
            leading: const Icon(
              Icons.food_bank,
              size: 35,
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.5,
        ),
        itemCount: c.dssp.length,
      ),
    );
  }
}
