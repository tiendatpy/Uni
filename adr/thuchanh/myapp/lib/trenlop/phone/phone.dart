import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<bool> openPhoneDial(String phoneNumber) async {
  bool check = await canLaunch('tel:$phoneNumber');
  if (check == false) {
    return false;
  } else {
    return launch('tel:$phoneNumber');
  }
}

class MyPhone extends StatelessWidget {
  TextEditingController controller2 = TextEditingController();

  MyPhone({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Phone demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              controller: controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Phone number',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String phoneNumber = controller2.text;
                openPhoneDial(phoneNumber);
              },
              child: const Text("Phone"),
            )
          ],
        ),
      ),
    );
  }
}
