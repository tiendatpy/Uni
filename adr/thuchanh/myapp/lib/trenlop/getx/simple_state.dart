import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller2 extends GetxController {
  int _counter = 0;
  int get counter => _counter;
  // static Controller2 get({String? tag}) => Get.find(tag: tag);
  void tang1() {
    _counter++;
    update(["01"]);
  }

  void tang2() {
    _counter++;
    update(["02"]);
  }
}

class PageSimpleState extends StatelessWidget {
  PageSimpleState({super.key});
  final c = Get.put(Controller2(), tag: "tag", permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single State"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.find<Controller2>(tag: "tag").tang1();
                  },
                  child: const Text("+ 01"),
                ),
                const SizedBox(width: 15),
                GetBuilder(
                  init: c,
                  // tag: "tag",
                  id: "01",
                  builder: (controller) => Text("${controller.counter}"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.find<Controller2>(tag: "tag").tang2();
                  },
                  child: const Text("+ 02"),
                ),
                const SizedBox(width: 15),
                GetBuilder(
                  init: c,
                  // tag: "tag",
                  id: "02",
                  builder: (controller) => Text("${controller.counter}"),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.off(const PageNext());
        },
        child: const Text("Next"),
      ),
    );
  }
}

class PageNext extends StatelessWidget {
  const PageNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route Management Demo"),
      ),
    );
  }
}
