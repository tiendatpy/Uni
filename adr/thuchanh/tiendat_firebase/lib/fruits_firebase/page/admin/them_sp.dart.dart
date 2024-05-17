import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiendat_firebase/fruits_firebase/model/model.dart';
import 'package:tiendat_firebase/fruits_firebase/page/helper/storage_image.dart';

class PageAddSP extends StatefulWidget {
  const PageAddSP({super.key});

  @override
  State<PageAddSP> createState() => _PageAddSPState();
}

class _PageAddSPState extends State<PageAddSP> {
  XFile? _xFile;
  TextEditingController txtId = TextEditingController();
  TextEditingController txtTen = TextEditingController();
  TextEditingController txtGia = TextEditingController();
  TextEditingController txtMota = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thêm sản phẩm"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: w * 0.8,
                  height: w * 0.8 * 2 / 3,
                  child: _xFile == null
                      ? const Icon(Icons.image)
                      : Image.file(
                          File(_xFile!.path),
                        ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      _xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                      if (_xFile != null) {
                        setState(() {});
                      }
                    },
                    child: const Text("Chọn ảnh"),
                  )
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: txtId,
                decoration: const InputDecoration(
                  labelText: "id",
                ),
              ),
              TextField(
                controller: txtTen,
                decoration: const InputDecoration(
                  labelText: "Tên",
                ),
              ),
              TextField(
                controller: txtGia,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Giá",
                ),
              ),
              TextField(
                controller: txtMota,
                decoration: const InputDecoration(
                  labelText: "Mô tả",
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // * 1.them anh, lay duong dan
                      // * 2.them du lieu vao FireStore
                      if (_xFile != null) {
                        uploadImage(
                                imagePath: _xFile!.path,
                                folders: ["Fruit"],
                                fileName: "${txtId.text}.jpg")
                            .then((url) {
                          Fruit fruit = Fruit(
                            id: txtId.text,
                            ten: txtTen.text,
                            gia: int.parse(txtGia.text),
                            mota: txtMota.text,
                            anh: url,
                          );
                          FruitSnapShot.themMoi(fruit);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("Thêm mới thành công."),
                            duration: const Duration(seconds: 1),
                            action: SnackBarAction(
                              onPressed: () => ScaffoldMessenger.of(context).clearSnackBars(),
                              label: "X",
                            ),
                          ));
                        }).catchError((error) {
                          print(
                            "Loi gi day: ${error.toString()}",
                          );
                        }).whenComplete(() {
                          print("Đã thêm thành công");
                        });
                      }
                    },
                    child: const Text("Thêm"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
