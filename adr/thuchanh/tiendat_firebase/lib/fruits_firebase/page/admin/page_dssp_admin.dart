import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tiendat_firebase/connect_db/widget_connet_firebase.dart';
import 'package:tiendat_firebase/fruits_firebase/model/model.dart';
import 'package:tiendat_firebase/fruits_firebase/page/admin/page_update.dart';
import 'package:tiendat_firebase/fruits_firebase/page/admin/them_sp.dart.dart';
import 'package:tiendat_firebase/fruits_firebase/page/helper/storage_image.dart';

class FruitStoreAdmin extends StatelessWidget {
  const FruitStoreAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MyFirebaseConnect(
      errorMessage: "loi",
      connectingMessage: "Dang ket noi",
      builder: (context) => const PageDSSP_Admin(),
    );
  }
}

class PageDSSP_Admin extends StatelessWidget {
  const PageDSSP_Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("DSSP Admin"),
      ),
      body: StreamBuilder<List<FruitSnapShot>>(
        stream: FruitSnapShot.getAll(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Loi roi"),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          List<FruitSnapShot> list = snapshot.data!;
          return ListView.separated(
            itemBuilder: (context, index) {
              FruitSnapShot fs = list[index];
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Slidable(
                  key: const ValueKey(0),
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) async {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PageUpdate(fs),
                          ));
                        },
                        backgroundColor: const Color(0xFF7BC043),
                        foregroundColor: Colors.white,
                        icon: Icons.archive,
                        label: 'Cập nhật',
                      ),
                      SlidableAction(
                        onPressed: (context) async {
                          await deleteImage(folders: ["Fruit"], fileName: "${fs.fruit.id}.jpg");
                          await fs.xoa();
                        },
                        backgroundColor: const Color.fromARGB(255, 207, 3, 3),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Xóa',
                      ),
                    ],
                  ),

                  // The child of the Slidable is what the user sees when the
                  // component is not dragged.
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.network(fs.fruit.anh!),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("id: ${fs.fruit.id}"),
                              Text("Tên: ${fs.fruit.ten}"),
                              Text("Giá: ${fs.fruit.gia}"),
                              Text("Mô tả: ${fs.fruit.mota}"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(thickness: 1.5),
            itemCount: list.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const PageAddSP(),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
