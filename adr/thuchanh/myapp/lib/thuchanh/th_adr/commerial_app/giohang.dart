import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/controller.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/models.dart';

class QLGioHang extends StatelessWidget {
  const QLGioHang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Giỏ hàng"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Khách hàng: Nguyễn Tiến Đạt",
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              "Địa chỉ: Nha Trang",
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              "Số điện thoại: 0359215188",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            const Text(
              "Giỏ hàng",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GetBuilder<AppDataController>(
                init: AppDataController(),
                id: 'gh1',
                builder: (controller) {
                  return ListView.separated(
                    itemCount: controller.slMatHangGH,
                    itemBuilder: (context, index) {
                      final ghItem = controller.gioHang[index];
                      final fruit = controller.getIdFromCard(ghItem);
                      if (fruit != null) {
                        return Slidable(
                          endActionPane: ActionPane(
                            motion: const BehindMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) {
                                  alert(context, "Thông báo",
                                      "Tính năng này chưa phát triển");
                                },
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                icon: Icons.archive,
                                label: 'Lưu trữ',
                              ),
                              SlidableAction(
                                onPressed: (context) {
                                  final fruit =
                                      controller.getIdFromCard(ghItem);
                                  controller.xoaItem(fruit!);
                                  alert(context, "Thông báo",
                                      "Đã xóa thành công");
                                },
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Xóa',
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.network("${fruit.image}"),
                                title: Text(fruit.tenSP,
                                    style: const TextStyle(fontSize: 18)),
                                trailing: Text("${fruit.gia}",
                                    style: const TextStyle(fontSize: 15)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove)),
                                  Text(
                                    "${ghItem.sl}",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        if (ghItem.sl > 1) {
                                          ghItem.sl++;
                                        }
                                      },
                                      icon: const Icon(Icons.add)),
                                ],
                              )
                            ],
                          ),
                        );
                      }
                      return null;
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(thickness: 1.5),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  // int? price(){
  //   int sum = 0;
  //   for(var fruit in _gioHang){
  //     sum += fruit
  //   }

  // }

  Future<dynamic> alert(BuildContext context, String title, String content) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Đóng hộp thoại
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
