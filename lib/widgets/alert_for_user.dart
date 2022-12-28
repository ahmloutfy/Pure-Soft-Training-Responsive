import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class EnglishUserAlert extends StatelessWidget {
  const EnglishUserAlert({Key? key, this.myText, this.doneText})
      : super(key: key);
  final String? myText;
  final String? doneText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Warning !'),
      content: Text('Please insert $myText'),
      actions: [
        okTextButton(context),
      ],
    );
  }
}

class ArabicUserAlert extends EnglishUserAlert {
  const ArabicUserAlert({Key? key, required super.myText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        '! تحذير',
        textAlign: TextAlign.right,
      ),
      content: Text(
        ' من فضلك أدخل $myText',
        textAlign: TextAlign.right,
      ),
      actions: [
        okTextButton(context),
      ],
    );
  }
}
