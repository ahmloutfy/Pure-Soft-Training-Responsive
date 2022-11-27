import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/ads_slider.dart';
import '../widgets/divisions.dart';

class ResponsiveTask extends StatelessWidget {
  const ResponsiveTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${kImagesPath}wallpaper.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const AdsSlider(),
            SizedBox(
              height: context.isPortrait ? 480 : 380,
              child: GridView.count(
                shrinkWrap: true,
                padding:
                    context.isPortrait ? portraitPadding : landscapePadding,
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
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(8, 8, context.isPortrait ? 17 : 33, 8),
              child: const Divisions(
                image: '${kImagesPath}call.png',
                title: 'تواصل معنا',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
