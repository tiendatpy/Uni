import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.amber),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/saotho.jpg",
                    ),
                  ),
                  const Text('XYZ'),
                  const Text(
                    'Drawer header',
                    style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                  )
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              hoverColor: Colors.black,
              title: Text(
                "Message",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              hoverColor: Colors.black,
              title: Text(
                "User",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              hoverColor: Colors.black,
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      drawerEnableOpenDragGesture: false,
    );
  }
}
