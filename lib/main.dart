import 'package:flutter/material.dart';
import 'package:pure_soft_training_responsive/screens/add_new_divison.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Locale? myLocale;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: myLocale?.languageCode == 'en' ? null : 'Cairo',
        ),
        title: 'Pure Soft Training (Responsive)',
        home: const AddDivision(),
      ),
    );
  }
}

// Github Sync : 3/12/2022 (4)
