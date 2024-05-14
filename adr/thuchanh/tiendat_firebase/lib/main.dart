import 'package:flutter/material.dart';
import 'package:tiendat_firebase/connect_db/widget_connet_firebase.dart';
import 'package:tiendat_firebase/page_home.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Page_Home(),
      ),
    );
  }
}



// * 1 document la 1 bang
// * field la cac gia tri trong cot
// * muon lam viec voi collection phai co document
