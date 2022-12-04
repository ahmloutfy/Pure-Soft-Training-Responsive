import 'package:flutter/material.dart';

class DivisionTextField extends StatelessWidget {
  const DivisionTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Division Title!',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
