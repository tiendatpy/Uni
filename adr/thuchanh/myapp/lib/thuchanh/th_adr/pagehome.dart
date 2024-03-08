import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/thuchanh/th_adr/page_profile.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              _buildButton(context,
                  label: "My profile", destination: PageProfile()),
              _buildButton(context,
                  label: "My profile2", destination: PageProfile()),
              _buildButton(context,
                  label: "My profile3", destination: PageProfile()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String label, required Widget destination}) {
    double w = MediaQuery.of(context).size.width * 0.75;
    return Container(
      width: w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const PageProfile()),
          );
        },
        child: Text(
          label,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
