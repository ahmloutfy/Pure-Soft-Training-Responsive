import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/ads_slider.dart';
import '../widgets/background_image.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/divisions.dart';
import 'add_new_divison.dart';

class ResponsiveTask extends StatelessWidget {
  const ResponsiveTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: BackgroundImage(
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddDivision(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        label: const Text('Add New Division'),
      ),
    );
  }
}
