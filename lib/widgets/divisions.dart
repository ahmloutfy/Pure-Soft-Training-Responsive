import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class Divisions extends StatelessWidget {
  final String? image;
  final String? title;

  const Divisions({
    Key? key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: context.isPortrait ? -4 : 40,
          child: Image.asset(
            '${kImagesPath}stars.png',
            color: Colors.blue,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: 145,
          height: 145,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                width: 4,
                color: Colors.blue,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ImageIcon(
                    size: 45,
                    AssetImage(image!),
                    color: Colors.blue,
                  ),
                  Text(
                    title!,
                    style: kDefaultFontStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
