import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/trenlop/getx/simple_state.dart';
import 'package:myapp/trenlop/json_list/page_list_photo.dart';
import 'package:myapp/trenlop/router_example/route.dart';
import 'package:myapp/trenlop/state_example/counter_exam/couter_state.dart';
import 'package:myapp/trenlop/form_example/page_form_mathang.dart';
import 'package:myapp/trenlop/getx/get_counter.dart';
import 'package:myapp/trenlop/state_example/counter_exam/page_counter.dart';
import 'package:myapp/trenlop/state_example/list_example/giohang_app.dart';
import 'package:myapp/trenlop/state_example/list_getX/giohang.dart';

class Page_lop extends StatelessWidget {
  const Page_lop({super.key});

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
            _buildButton(context,
                label: "Roter demo", destination: const Page1()),
            _buildButton(context,
                label: "Provider demo",
                destination: const CounterStateProvider()),
            _buildButton(context,
                label: "List trái cây", destination: const GioHangApp()),
            _buildButton(context,
                label: "Form", destination: PageFormMatHang()),
            _buildButton(context,
                label: "Getx demo", destination: PageGetxCounter()),
            _buildButton(context,
                label: "Giỏ hàng getx", destination: GioHangGetX()),
            _buildButton(context,
                label: "Simple state getx",
                destination: const PageSimpleState()),
            _buildButton(context,
                label: "Bindings demo", destination: const SimpleStateHome()),
            _buildButton(context,
                label: "Json demo", destination: const PagePhotos()),
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
