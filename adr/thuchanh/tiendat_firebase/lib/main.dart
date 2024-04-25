import 'package:flutter/material.dart';
import 'package:tiendat_firebase/page_sinhvien.dart';
import 'package:tiendat_firebase/widget_connet_firebase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyFirebaseConnect(
      errorMessage: "Loi ket noi firebase",
      connectingMessage: "Dang ket noi...",
      builder: (context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PageSV(),
      ),
    );
  }
}

// * 1 document la 1 bang
// * field la cac gia tri trong cot
// * muon lam viec voi collection phai co document
