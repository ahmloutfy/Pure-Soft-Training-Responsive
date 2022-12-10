import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class BackgroundImage extends StatelessWidget {
  final Widget? child;
  const BackgroundImage({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${kImagesPath}wallpaper.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
