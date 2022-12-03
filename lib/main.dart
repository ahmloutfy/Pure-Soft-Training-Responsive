import 'package:flutter/material.dart';
import 'package:pure_soft_training_responsive/screens/add_divison.dart';
import 'package:pure_soft_training_responsive/screens/home_page.dart';
import 'package:pure_soft_training_responsive/widgets/custom_appbar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pure Soft Training (Responsive)',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: const ResponsiveTask(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddDivision(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Github Sync : 3/12/2022 (1)