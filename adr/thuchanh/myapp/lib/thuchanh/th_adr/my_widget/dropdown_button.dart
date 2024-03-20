import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/thuchanh/th_adr/my_widget/wrapper_data.dart';

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyDropDownButtonNTU extends StatefulWidget {
  final List<String> labels;
  final StringWrapper value;
  final bool isExpand;
  // 1 hàm nhận vào 1 chuỗi và trả về 1 widget,
  final Widget Function(String label)? itemBuilder;
  const MyDropDownButtonNTU(
      {required this.labels,
      required this.value,
      this.itemBuilder,
      this.isExpand = false,
      super.key});

  @override
  State<MyDropDownButtonNTU> createState() => _MyDropDownButtonNTUState();
}

class _MyDropDownButtonNTUState extends State<MyDropDownButtonNTU> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: widget.isExpand,
      value: widget.value.value,
      items: widget.labels
          .map((label) => DropdownMenuItem(
                value: label,
                child: widget.itemBuilder == null
                    ? Text(label)
                    : widget.itemBuilder!(label),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          widget.value.value = value;
        });
      },
    );
  }
}
