import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiendat_firebase/crud_sv/page_sinhvien.dart';
import 'package:tiendat_firebase/fruits_firebase/page/Firebase_store.dart';
import 'package:tiendat_firebase/fruits_firebase/page/page_dssp_admin.dart';

class Page_Home extends StatelessWidget {
  const Page_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trên lớp'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            _buildButton(context, label: "Firebase Demo", destination: const PageSV()),
            _buildButton(context, label: "Gio hang Firebase", destination: const AppFruitStore()),
            _buildButton(context, label: "Page Admin", destination: const FruitStoreAdmin()),
          ]),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, {required String label, required Widget destination}) {
    double w = MediaQuery.of(context).size.width * 0.75;
    return SizedBox(
      width: w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Text(
          label,
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
