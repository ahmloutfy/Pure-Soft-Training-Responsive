import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class DivisionTextField extends StatelessWidget {
  final String? hintString;
  final Widget? labelString;
  final int? linesCount;
  final Color? color;

  const DivisionTextField({
    Key? key,
    required this.linesCount,
    this.hintString,
    this.labelString,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      maxLines: linesCount,
      decoration: InputDecoration(
        label: Center(child: labelString),
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hintString,
        enabledBorder: customOutlineInputBorder(color: Colors.black),
        focusedBorder: customOutlineInputBorder(color: Colors.grey),
      ),
    );
  }
}
