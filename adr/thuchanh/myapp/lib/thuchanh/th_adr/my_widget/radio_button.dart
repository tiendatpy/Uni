import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/thuchanh/th_adr/my_widget/wrapper_data.dart';

class MyGroupRadio extends StatefulWidget {
  const MyGroupRadio({super.key});

  @override
  State<MyGroupRadio> createState() => _MyGroupRadioState();
}

class _MyGroupRadioState extends State<MyGroupRadio> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyGroupRadioNTU extends StatefulWidget {
  final List<String> labels;
  final StringWrapper groupValue;
  final bool? isHorizontal;
  const MyGroupRadioNTU(
      {required this.labels,
      required this.groupValue,
      this.isHorizontal,
      super.key});

  @override
  State<MyGroupRadioNTU> createState() => _MyGroupRadioNTUState();
}

class _MyGroupRadioNTUState extends State<MyGroupRadioNTU> {
  @override
  Widget build(BuildContext context) {
    if (widget.isHorizontal == true) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildListRadio(),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildListRadio(),
    );
  }

  _buildListRadio() {
    return widget.labels
        .map((label) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  value: label,
                  groupValue: widget.groupValue.value,
                  onChanged: (value) {
                    setState(() {
                      widget.groupValue.value = value;
                    });
                  },
                ),
                Text(label)
              ],
            ))
        .toList();
  }
}
