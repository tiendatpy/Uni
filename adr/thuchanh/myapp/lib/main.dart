import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pagehome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: const PageHome());
  }
}
// * GetX
// * khác nhau giữa GetX/Obs:
// * khi trạng thái thay đổi thì tất cả các widget thay đổi theo thì sử dụng Obs
// * ta có nhiều controller và mỗi widget chỉ sử dụng 1 controller thì sử dụng getX
// =================================================================
// * Dependency
// * permament = true thì giữ lại
