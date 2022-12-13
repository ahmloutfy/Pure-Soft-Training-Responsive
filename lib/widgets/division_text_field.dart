import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class DivisionTextField extends StatelessWidget {
  final TextInputAction? myInputAction;
  final TextEditingController? myController;
  final FormFieldValidator? validator;
  final String? text;
  final String? hintString;
  final Widget? labelString;
  final int? linesCount;
  final Color? color;

  const DivisionTextField({
    Key? key,
    this.linesCount,
    this.hintString,
    this.labelString,
    this.color,
    this.text,
    this.validator,
    required this.myController,
    this.myInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: myInputAction,
      controller: myController,
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
