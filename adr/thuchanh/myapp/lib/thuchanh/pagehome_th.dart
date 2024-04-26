import 'package:flutter/material.dart';
import 'package:myapp/thuchanh/th_adr/commerial_app/FruitStoreHome.dart';
import 'package:myapp/thuchanh/th_adr/drawer.dart';
import 'package:myapp/thuchanh/th_adr/page_profile.dart';
import 'package:myapp/thuchanh/th_adr/rss/page/page_rss_simple.dart';

class Page_ThucHanh extends StatelessWidget {
  const Page_ThucHanh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thực hành'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            _buildButton(context,
                label: "Profile", destination: const PageProfile()),
            _buildButton(context,
                label: "Drawer", destination: const DrawerExample()),
            _buildButton(context,
                label: "Ecommerce App", destination: const AppFruitStore()),
            _buildButton(context,
                label: "Bao dien tu", destination: const RssApp()),
          ]),
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
