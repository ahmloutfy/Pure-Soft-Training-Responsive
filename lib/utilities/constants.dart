import 'package:flutter/material.dart';

const kDefaultFontStyle = TextStyle(
  fontWeight: FontWeight.bold,
);

const kImagesPath = 'assets/images/';

const kAdsPath = 'assets/ads/';

const portraitPadding = EdgeInsets.fromLTRB(50, 25, 50, 20);

const landscapePadding = EdgeInsets.fromLTRB(120, 25, 90, 20);

extension MediaQueryValues on BuildContext {
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  double get screenWidth => MediaQuery.of(this).size.width;
}

OutlineInputBorder customOutlineInputBorder({required Color color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
      width: 1.5,
      color: color,
    ),
  );
}

class UniversalKey {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}

class LocaleFont {
  static Locale? myLocale;
}

extension LanguagesValidators on String {
  static bool arabicValidator() {
    final arabicRegex = RegExp(r'/^[ء-ي0-9]*$');
    return arabicRegex.hasMatch('');
  }

  static bool englishValidator() {
    final englishRegex = RegExp(r'/^[A-Za-z0-9 ]*$');
    return englishRegex.hasMatch('');
  }
}

class EditingControllers {
  static TextEditingController? enTitleInput = TextEditingController(),
      enDescriptionInput = TextEditingController(),
      arTitleInput = TextEditingController(),
      arDescriptionInput = TextEditingController();
}

TextButton okTextButton(context) {
  return TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
}
