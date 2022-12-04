import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/ads_slider.dart';
import '../widgets/divisions.dart';

class ResponsiveTask extends StatelessWidget {
  const ResponsiveTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                height: context.isPortrait ? 590 : 450,
                child: Wrap(
                  spacing: context.isPortrait ? 50 : 70,
                  alignment: WrapAlignment.center,
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
                    Center(
                      child: Divisions(
                        image: '${kImagesPath}call.png',
                        title: 'تواصل معنا',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
