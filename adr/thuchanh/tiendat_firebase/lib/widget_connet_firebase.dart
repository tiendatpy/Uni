import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiendat_firebase/firebase_options.dart';

class MyFirebaseConnect extends StatefulWidget {
  final String errorMessage;
  final String connectingMessage;
  final Widget Function(BuildContext context) builder;

  const MyFirebaseConnect(
      {super.key,
      //Key? key,
      required this.errorMessage,
      required this.connectingMessage,
      required this.builder});

  @override
  State<MyFirebaseConnect> createState() => _MyFirebaseConnectState();
}

class _MyFirebaseConnectState extends State<MyFirebaseConnect> {
  bool ketNoi = false;
  bool loi = false;
  @override
  Widget build(BuildContext context) {
    khoiTaoFirebase() {
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
          .then((value) {
        setState(() {
          ketNoi = true;
        });
      }).catchError((error) {
        setState(() {
          loi = true;
        });
      }).whenComplete(() {
        print("Ket noi thanh cong");
      });
    }

    @override
    void initState() {
      super.initState();
      khoiTaoFirebase();
    }

    if (loi) {
      print(123);
      return Container(
        color: Colors.white,
        child: Center(
          child: Text(
            widget.errorMessage,
            style: const TextStyle(fontSize: 16, color: Colors.red),
            textDirection: TextDirection.ltr,
          ),
        ),
      );
    }
    if (ketNoi == false) {
      return Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              Text(
                widget.connectingMessage,
                style: const TextStyle(fontSize: 16),
                textDirection: TextDirection.ltr,
              )
            ],
          ),
        ),
      );
    } else {
      return widget.builder(context);
    }
  }
}
