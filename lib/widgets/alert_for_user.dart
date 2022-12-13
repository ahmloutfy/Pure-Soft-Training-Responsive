import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class UserAlert extends StatelessWidget {
  const UserAlert({Key? key, this.myText, this.doneText}) : super(key: key);
  final String? myText;
  final String? doneText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Warning!'),
      content: LocaleFont.myLocale?.languageCode == 'en'
          ? Text('Please insert $myText')
          : Text(' من فضلك أدخل $myText'),
      actions: [
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
