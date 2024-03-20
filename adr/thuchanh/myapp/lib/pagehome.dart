import 'package:flutter/material.dart';
import 'package:myapp/thuchanh/pagehome_th.dart';
import 'package:myapp/trenlop/pagehome_lop.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(children: [
              _buildButton(context,
                  label: "Thực hành", destination: const Page_ThucHanh()),
              _buildButton(context,
                  label: "Trên lớp", destination: const Page_lop()),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String label, required Widget destination}) {
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
