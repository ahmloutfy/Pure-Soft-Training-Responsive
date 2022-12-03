import 'package:flutter/material.dart';

const kDefaultFontStyle = TextStyle(
  fontFamily: 'Cairo',
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
