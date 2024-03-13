import 'package:flutter/material.dart';
import 'package:myapp/thuchanh/th_adr/pagehome.dart';
import 'package:myapp/trenlop/_page_home.dart';
import 'package:myapp/trenlop/form_example/page_form_mathang.dart';
import 'package:myapp/trenlop/getx/get_counter.dart';

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
        home: PageGetxCounter());
  }
}
