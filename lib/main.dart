import 'package:flutter/material.dart';
import 'package:pure_soft_training_responsive/screens/home_page.dart';
import 'package:pure_soft_training_responsive/widgets/custom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pure Soft Training (Responsive)',
      home: Scaffold(
        appBar: CustomAppBar(),
        body: ResponsiveTask(),
      ),
    );
  }
}
