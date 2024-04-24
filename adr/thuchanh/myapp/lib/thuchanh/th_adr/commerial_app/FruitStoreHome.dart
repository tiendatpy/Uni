import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/controller.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/giohang.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/models.dart';
import 'package:badges/badges.dart' as badges;

class AppFruitStore extends StatelessWidget {
  const AppFruitStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppDataBindings(),
      debugShowCheckedModeBanner: false,
      home: const PageHomeFruitStore(),
    );
  }
}

class PageHomeFruitStore extends StatelessWidget {
  const PageHomeFruitStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Fruit Store"),
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
      body: GetBuilder<AppDataController>(
        id: "gridview_sp",
        init: AppDataController.instance,
        builder: (controller) {
          return GridView.extent(
            maxCrossAxisExtent: 300, // chiều rộng lớn nhất
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: controller.dssp
                .map((f) => GestureDetector(
                      onTap: () {
                        Get.to(() => PageChiTiet(f: f));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: f.image != null // thuộc tính khả null
                                  ? Image.network(f.image!)
                                  : const Icon(Icons.image_not_supported),
                            ),
                            Text(f.tenSP),
                            Text(
                              "${f.gia} vnd",
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}

class PageChiTiet extends StatelessWidget {
  Fruit f;
  PageChiTiet({required this.f, super.key});
  double r = Random().nextInt(21) / 100 + 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(f.tenSP),
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
              child: Image.network(f.image!),
            ),
            Text(f.tenSP),
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
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough),
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
