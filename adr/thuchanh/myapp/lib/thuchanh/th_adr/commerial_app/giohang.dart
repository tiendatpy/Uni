import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/FruitStoreHome.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/controller.dart';

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
                                  Get.to(() => PageChiTiet(f: fruit));
                                },
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                icon: Icons.more,
                                label: 'Chi tiết',
                              ),
                              SlidableAction(
                                onPressed: (context) {
                                  final fruit = controller.getIdFromCard(ghItem);
                                  controller.xoaItem(fruit!);
                                  alert(context, "Thông báo", "Đã xóa thành công");
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
                                title: Text(fruit.tenSP, style: const TextStyle(fontSize: 18)),
                                trailing:
                                    Text("${fruit.gia}", style: const TextStyle(fontSize: 15)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      controller.giam(index);
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  Text("${ghItem.sl}",
                                      style: const TextStyle(fontWeight: FontWeight.bold)),
                                  IconButton(
                                    onPressed: () {
                                      controller.tang(index);
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Tổng: ${controller.priceOfItem(index)} đ",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }
                      return null;
                    },
                    separatorBuilder: (context, index) => const Divider(thickness: 1.5),
                  );
                },
              ),
            ),
            GetBuilder<AppDataController>(
              init: AppDataController(),
              id: 'tongtien',
              builder: (controller) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("Thành tiền: ", style: TextStyle(fontSize: 18)),
                          Text(
                            "${AppDataController.instance.sumOfPrice()} đ",
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 86, 52, 125),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // alert(context, 'Thông báo', 'Đặt hàng thành công');
                          Get.back();
                        },
                        child: const Text('Đặt hàng', style: TextStyle(fontSize: 17)),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  alert(BuildContext context, String title, String content) {
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
