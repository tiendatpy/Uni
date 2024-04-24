import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: Column(
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
                return ListView.builder(
                  itemCount: controller.slMatHangGH,
                  itemBuilder: (context, index) {
                    final ghItem = controller.gioHang[index];
                    final fruit = controller.getIdFromCard(ghItem);
                    if (fruit != null) {
                      return ListTile(
                        title: Text(fruit.tenSP,
                            style: const TextStyle(fontSize: 18)),
                        subtitle: Text("${fruit.gia}",
                            style: const TextStyle(fontSize: 15)),
                      );
                    }
                    return null;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
