import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class AdsSlider extends StatelessWidget {
  const AdsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> adsImages = <String>[
      '${kAdsPath}brand.jpg',
      '${kAdsPath}cola.jpg',
      '${kAdsPath}ice_cream.jpg',
      '${kAdsPath}nutella.jpg',
      '${kAdsPath}oddly.jpg',
      '${kAdsPath}pringles.jpg',
      '${kAdsPath}tide.jpg',
      '${kAdsPath}walker.jpg',
      '${kAdsPath}weetabix.jpg',
      '${kAdsPath}yogurt.jpg',
    ];

    final List<String> adsNames = <String>[
      'Brand',
      'CocaCola',
      'Ice Cream',
      'Nutella',
      'Oddly',
      'Pringles',
      'Tide',
      'Walker',
      'Weetabix',
      'Yogurt'
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 170,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: adsImages.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Tooltip(
              message: adsNames[index],
              child: Image.asset(
                width: 270,
                adsImages[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
