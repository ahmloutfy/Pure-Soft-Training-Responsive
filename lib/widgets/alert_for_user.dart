import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class UserAlert extends StatelessWidget {
  const UserAlert({Key? key, this.myText, this.doneText}) : super(key: key);
  final String? myText;
  final String? doneText;

  @override
  Widget build(BuildContext context) {
    if (LanguagesValidators.arabicValidator()) {
      return AlertDialog(
        title: const Text('تحذير !'),
        content: Text('$myText من فضلك أدخل '),
        actions: [
          okTextButton(context),
        ],
      );
    } else {
      return AlertDialog(
        title: const Text('Warning !'),
        content: Text('Please insert $myText'),
        actions: [
          okTextButton(context),
        ],
      );
    }
  }
}
