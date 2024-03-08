import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class SelectedValue {
  String? value;
  SelectedValue({this.value});
}

class _PageProfileState extends State<PageProfile> {
  String? gioiTinh = "nam";
  List<String> phepTinhs = [
    "Cộng",
    "Trừ",
    "Nhân",
    "Chia",
    "Tích phân",
    "Tất cả"
  ];
  SelectedValue pt = SelectedValue(value: "Cộng");
  // Món ăn
  List<String> monAns = ["Hải sản", "Cơm chiên", "Bánh mì", "Bò kho"];
  SelectedValue monan = SelectedValue(value: "Hải sản");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  child: Image.asset("assets/images/saotho.jpg"),
                ),
              ),
              const SizedBox(height: 10),
              const Text("Họ tên"),
              const Text(
                "Nguyễn Tiến Đạt",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // gioi tinh
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Radio(
                        value: "nam", //giá trị cố định
                        groupValue: gioiTinh,
                        onChanged: (value) {
                          setState(() {
                            gioiTinh = value;
                          });
                        },
                      ),
                      title: const Text('Nam'),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Radio(
                        value: "nu", //giá trị cố định
                        groupValue: gioiTinh,
                        onChanged: (value) {
                          setState(() {
                            gioiTinh = value;
                          });
                        },
                      ),
                      title: const Text('Nữ'),
                    ),
                  )
                ],
              ),
              const Text("Ngày sinh"),
              const Text(
                "18/7/2003",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Quê quán"),
              const Text(
                "Khánh Hòa",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Sở thích"),
              const Text(
                "Chạy bộ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Chọn phép toán giỏi nhất"),
              buildDropdownButton(label: phepTinhs, s: pt),
              const Text("Chọn món ăn ngon nhất"),
              buildDropdownButton(label: monAns, s: monan),
            ],
          ),
        ),
      ),
    );
  }

  DropdownButton<String> buildDropdownButton(
      {required List<String> label, required SelectedValue s}) {
    return DropdownButton(
      isExpanded: true,
      value: s.value,
      items: label
          .map((pheptinh) => DropdownMenuItem(
                value: pheptinh,
                child: Text(pheptinh),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          s.value = value;
        });
      },
    );
  }
}
