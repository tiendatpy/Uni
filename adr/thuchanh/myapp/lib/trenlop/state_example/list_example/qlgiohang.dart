import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/trenlop/state_example/list_example/app_state.dart';
import 'package:provider/provider.dart';

class GioHang extends StatelessWidget {
  const GioHang({super.key});

  @override
  Widget build(BuildContext context) {
    var c = context.watch<AppGioHangState>();
    int tinhTong() {
      int tong = 0;
      for (var i = 0; i < c.gioHang.length; i++) {
        tong += c.cost[c.gioHang[i]];
      }
      return tong;
    }

    var tong = tinhTong();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shopping cart"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(c.dssp[c.gioHang[index]]),
                    subtitle: Text("Giá: ${c.cost[index]}.000đ"),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        var appState = context.read<AppGioHangState>();
                        appState.xoaGioHang(index);
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1.5,
                ),
                itemCount: c.gioHang.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Tổng thành tiền: ",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "$tong.000đ",
                  style: const TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            )
          ],
        ));
  }
}
