import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/trenlop/form_example/form_model.dart';

class PageFormMatHang extends StatelessWidget {
  PageFormMatHang({super.key});
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtSoLuong = TextEditingController();
  MatHang m = MatHang();
  String? dropdownValue = loaiMHs[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin mặt hàng'),
      ),
      body: Form(
        key: formState,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: txtName,
                onSaved: (newValue) => m.name = newValue,
                validator: (value) => validateString(value),
                decoration: const InputDecoration(
                  labelText: "Tên mặt hàng",
                ),
              ),
              DropdownButtonFormField<String>(
                items: loaiMHs
                    .map((loaiMH) => DropdownMenuItem<String>(
                          value: loaiMH,
                          child: Text(loaiMH),
                        ))
                    .toList(),
                value: dropdownValue,
                onChanged: (value) => dropdownValue = value,
                onSaved: (newValue) => m.loaiMH = newValue,
                validator: (value) => validateString(value),
                decoration: const InputDecoration(
                  labelText: "Loại mặt hàng",
                ),
              ),
              TextFormField(
                controller: txtSoLuong,
                keyboardType: TextInputType.number,
                onSaved: (newValue) => m.soLuong = int.parse(newValue!),
                validator: (value) => validateSoLuong(value),
                decoration: const InputDecoration(
                  labelText: "Số lượng",
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () => _refresh(context),
                    child: const Text('Nhập mới'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => _save(context),
                    child: const Text('Save'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _save(BuildContext context) {
    if (formState.currentState!.validate()) {
      formState.currentState!.save();
      hienThiDialog(context);
    }
  }

  validateString(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập tên mặt hàng';
    }
    return null;
  }

  validateSoLuong(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập số lượng';
    }
    return int.parse(value) < 0 ? "Số lượng không được bé hơn 0" : null;
  }

  void hienThiDialog(BuildContext context) {
    var dialog = AlertDialog(
      title: const Text('Thông tin mặt hàng'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Bạn đã nhập thành công"),
          Text('Tên mặt hàng: ${m.name}'),
          Text("Loại MH: ${m.loaiMH}"),
          Text("Số lượng: ${m.soLuong}"),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Đóng'),
        ),
      ],
    );
    showDialog(context: context, builder: (context) => dialog);
  }

  _refresh(BuildContext context) {
    txtName.clear();
    txtSoLuong.clear();
  }
}
