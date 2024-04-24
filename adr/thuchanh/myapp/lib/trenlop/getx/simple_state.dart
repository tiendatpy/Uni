import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller2 extends GetxController {
  int _counter = 0;
  int get counter => _counter;
  static Controller2 get(String tag) => Get.find(tag: tag);
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
  const PageSimpleState({super.key});
  // final c = Get.put(Controller2(), "tag", permanent: true);
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
                    Controller2.get("tag").tang1();
                  },
                  child: const Text("+ 01"),
                ),
                const SizedBox(width: 15),
                GetBuilder(
                  init: Controller2.get("tag"),
                  tag: "tag",
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
                    Controller2.get("tag").tang2();
                  },
                  child: const Text("+ 02"),
                ),
                const SizedBox(width: 15),
                GetBuilder(
                  init: Controller2.get("tag"),
                  tag: "tag",
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

//------------------------------------------------------------------------------------------------
// binding
class SimpleStateBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Controller2(), permanent: true, tag: "tag");
  }
}

class SimpleStateHome extends StatelessWidget {
  const SimpleStateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binding demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              const PageSimpleState(),
              binding: SimpleStateBindings(),
            );
          },
          child: const Text("Simple state"),
        ),
      ),
    );
  }
}
