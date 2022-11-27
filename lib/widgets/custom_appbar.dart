import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ImageIcon(
            AssetImage('assets/images/alphabet.png'),
            color: Colors.white,
          ),
          Text(
            'الرئيسية',
            style: kDefaultFontStyle,
          ),
          ImageIcon(
            AssetImage('assets/images/logout.png'),
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
