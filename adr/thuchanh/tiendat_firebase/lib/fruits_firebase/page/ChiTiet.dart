import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;
import 'package:tiendat_firebase/fruits_firebase/controller/controllers.dart';
import 'package:tiendat_firebase/fruits_firebase/model/model.dart';
import 'package:tiendat_firebase/fruits_firebase/page/giohang.dart';

class PageChiTiet extends StatelessWidget {
  Fruit f;
  PageChiTiet({required this.f, super.key});
  double r = Random().nextInt(21) / 100 + 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(f.ten),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GetBuilder<AppDataController>(
              id: "gh1",
              init: AppDataController.instance,
              builder: (controller) {
                return badges.Badge(
                  badgeContent: Text("${controller.gioHang.length}"),
                  child: const Icon(Icons.shopping_bag_outlined),
                  onTap: () {
                    Get.to(() => const QLGioHang());
                  },
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppDataController.instance.themVaoGioHang(f);
        },
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.network(f.anh!),
            ),
            Text(f.ten),
            Row(
              children: [
                Text(
                  "${f.gia} vnd",
                  style: const TextStyle(color: Colors.red),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "${f.gia * 0.2} vnd",
                  style: const TextStyle(decoration: TextDecoration.lineThrough),
                )
              ],
            ),
            Text(
              f.mota!,
              style: const TextStyle(inherit: true),
            ),
            Row(
              children: [
                RatingBarIndicator(
                  rating: r,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 25.0,
                  direction: Axis.horizontal,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "$r",
                  style: const TextStyle(color: Colors.red, fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
