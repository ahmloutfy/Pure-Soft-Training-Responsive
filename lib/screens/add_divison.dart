import 'package:flutter/material.dart';

import '../widgets/division_text_field.dart';

class AddDivision extends StatelessWidget {
  const AddDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Division'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const DivisionTextField(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 450,
                child: (DivisionTextField()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
