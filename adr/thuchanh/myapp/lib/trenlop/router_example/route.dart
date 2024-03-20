import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1();
}

class _Page1 extends State<Page1> {
  String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('First Page'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(text ?? "Waiting..."),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            text = await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Page2(text: "Welcome to page 2")));
            setState(() {});
          },
        ),
      ]),
    );
  }
}

class Page2 extends StatefulWidget {
  final String? text;
  const Page2({super.key, required this.text});

  @override
  State<Page2> createState() => _Page2();
}

class _Page2 extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Second Page'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(widget.text.toString()),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          child: const Text("Back"),
          onPressed: () async {
            Navigator.of(context).pop("Thank you");
          },
        ),
      ]),
    );
  }
}
