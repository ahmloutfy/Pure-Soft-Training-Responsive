import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import 'divisions.dart';

class GridDivisions extends StatelessWidget {
  const GridDivisions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          padding: context.isPortrait ? portraitPadding : landscapePadding,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: context.isPortrait ? 2 : 3,
          children: const [
            Divisions(
              image: '${kImagesPath}person.png',
              title: 'ولي الأمر',
            ),
            Divisions(
              image: '${kImagesPath}employing.png',
              title: 'طلب توظيف',
            ),
            Divisions(
              image: '${kImagesPath}links.png',
              title: 'روابط عامة',
            ),
            Divisions(
              image: '${kImagesPath}interview.png',
              title: 'طلب مقابلة',
            ),
            Divisions(
              image: '${kImagesPath}form.png',
              title: 'نماذج',
            ),
            Divisions(
              image: '${kImagesPath}calendar.png',
              title: 'رزنامة العام',
            ),
            Divisions(
              image: '${kImagesPath}call.png',
              title: 'تواصل معنا',
              // right: context.isPortrait ? -125 : -85,
              // left: context.isPortrait ? -15 : -16,
              // bottom: context.isPortrait ? -10 : 30,
            ),
          ],
        ),
      ],
    );
  }
}
