import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Hello 63CNTT-1"),
        actions: [
          IconButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar
            (SnackBar(
              content: Text("Share cho ${nameController.text} với"),
              duration: Duration(seconds: 2),
              action: SnackBarAction(
                label: "Đóng", 
                onPressed:() {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                } ),
              ));
          },
           icon: Icon(Icons.share))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 200,
                    height: 300,
                    child: Image.network("https://th.bing.com/th/id/OIP.kCgTeH1OSrPxIDb78BaaVAHaLG?rs=1&pid=ImgDetMain"),
                  )
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.black),
                  ],
                  ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Nhập tên vào đây", 
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}