import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/trenlop/state_example/list_getX/giohang.dart';

class InGioHang extends StatelessWidget {
  InGioHang({super.key});
  final c = Get.put(GioHangController());
  @override
  Widget build(BuildContext context) {
    int sum() {
      int sum = 0;
      for (int i = 0; i < c.gioHang.length; i++) {
        sum += c.cost[c.gioHang[i]];
      }
      return sum;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Giỏ hàng"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Obx(
            () => ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(c.dssp[c.gioHang[index]]),
                  subtitle: Text("Giá: ${c.cost[index]}"),
                  trailing: IconButton(
                    onPressed: () {
                      c.xoaGioHang(index);
                    },
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                thickness: 1.5,
              ),
              itemCount: c.gioHang.length,
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Tổng thành tiền: "),
              Obx(() => Text("${sum()}"))
            ],
          )
        ],
      ),
    );
  }
}
