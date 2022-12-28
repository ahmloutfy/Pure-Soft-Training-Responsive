import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    required this.myController,
    this.myInputAction,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
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
