import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiendat_firebase/model.dart';

class PageSV extends StatelessWidget {
  const PageSV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Danh sách sinh viên"),
      ),
      body: StreamBuilder<List<SinhVienSnapShot>>(
          stream: SinhVienSnapShot.getAll(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // * loi xay ra
              return const Center(
                child: Text("Loi"),
              );
            } else {
              if (!snapshot.hasData) {
                // * Dang truy cap du lieu
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                var list = snapshot.data!;
                return ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                          leading: Text("${index + 1}"),
                          title: Text(list[index].sv.ten),
                        ),
                    separatorBuilder: (context, index) =>
                        const Divider(thickness: 1.5),
                    itemCount: list.length);
              }
            }
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PageChiTietSVState(),
            ));
          }),
    );
  }
}

class PageChiTietSVState extends StatefulWidget {
  const PageChiTietSVState({super.key});

  @override
  State<PageChiTietSVState> createState() => _PageChiTietSVStateState();
}

class _PageChiTietSVStateState extends State<PageChiTietSVState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chi tiết"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
