import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/listview.dart';
import 'package:myapp/route.dart';
import 'package:myapp/trenlop/couter_state.dart';
import 'package:myapp/trenlop/page_counter.dart';
import 'package:myapp/trenlop/state_example/list_example/giohang_app.dart';

class PageHome2 extends StatelessWidget {
  const PageHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            _buildButton(context,
                label: "My State", destination: const CounterStateProvider()),
            _buildButton(context,
                label: "List trái cây", destination: const GioHangApp()),
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
