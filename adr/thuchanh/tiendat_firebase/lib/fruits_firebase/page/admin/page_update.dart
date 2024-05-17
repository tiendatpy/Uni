import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiendat_firebase/fruits_firebase/model/model.dart';
import 'package:tiendat_firebase/fruits_firebase/page/helper/storage_image.dart';

class PageUpdate extends StatefulWidget {
  FruitSnapShot fs;
  PageUpdate(this.fs, {super.key});

  @override
  State<PageUpdate> createState() => _PageUpdateState();
}

class _PageUpdateState extends State<PageUpdate> {
  XFile? _xFile;
  TextEditingController txtId = TextEditingController();
  TextEditingController txtTen = TextEditingController();
  TextEditingController txtGia = TextEditingController();
  TextEditingController txtMota = TextEditingController();

  @override
  void initState() {
    txtId.text = widget.fs.fruit.id;
    txtTen.text = widget.fs.fruit.ten;
    txtGia.text = widget.fs.fruit.gia.toString();
    txtMota.text = widget.fs.fruit.mota ?? "";
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cập nhật sản phẩm"),
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
                      ? Image.network("${widget.fs.fruit.anh}")
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
                    onPressed: () async {
                      String? imageurl;
                      Fruit fruit = Fruit(
                        id: txtId.text,
                        ten: txtTen.text,
                        gia: int.parse(txtGia.text),
                        mota: txtMota.text,
                        anh: widget.fs.fruit.anh,
                      );
                      if (_xFile != null) {
                        imageurl = await uploadImage(
                          imagePath: _xFile!.path,
                          folders: ["Fruit"],
                          fileName: "${txtId.text}.jpg",
                        );
                      } else {
                        fruit.anh = widget.fs.fruit.anh;
                      }
                      widget.fs.capNhat(fruit);
                    },
                    child: const Text("Cập nhật"),
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
