import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/trenlop/test2/json_data.dart';

class PagePhotos extends StatelessWidget {
  const PagePhotos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder<List<Photo>>(
          future: getHTTP_content(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("bi loi roi"),
              );
            }
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List<Photo> list = snapshot.data!;
            return GridView.extent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: list.map((photo) => Image.network(photo.url)).toList(),
            );
          }),
    );
  }
}
