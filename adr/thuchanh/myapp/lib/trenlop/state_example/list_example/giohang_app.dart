import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/trenlop/state_example/list_example/app_state.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class GioHangApp extends StatelessWidget {
  const GioHangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppGioHangState(),
      child: const MaterialApp(
        home: GioHangHomePage(),
      ),
    );
  }
}

class GioHangHomePage extends StatelessWidget {
  const GioHangHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var c = context.watch<AppGioHangState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Store'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: badges.Badge(
              badgeContent: Text("${c.gioHang.length}"),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(c.dssp[index]),
            trailing: IconButton(
              icon: c.kiemTraMH_CoTrongGH(index) == false
                  ? const Icon(Icons.add)
                  : const Icon(Icons.check),
              onPressed: () {
                var appState = context.read<AppGioHangState>();
                appState.themVaoGioHang(index);
              },
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
