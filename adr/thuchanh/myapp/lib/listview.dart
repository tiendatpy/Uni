import 'dart:math';

import 'package:flutter/material.dart';
List<String> sps = ["Xoai", "Buoi", "Mit", "Coc", "Oi","Me","Xoai", "Buoi", "Mit", "Coc", "Oi","Me"];


class Listview extends StatelessWidget {
  const Listview({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Chém trái cây"),
        actions: [
          Icon(Icons.icecream)
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index)=> Card(
            child: ListTile(
              leading: Icon(Icons.free_breakfast_sharp),
              title: Text(sps[index]),
              subtitle: Text("Trái cây Việt Nam"),
              trailing: Text("${Random().nextInt(100)}.000 vnđ"),
            ),
          ),
        separatorBuilder: (context, index) => Divider(thickness: 1.5,), 
        itemCount: sps.length),
    );
  }
}




