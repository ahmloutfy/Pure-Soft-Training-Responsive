import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/background_image.dart';
import '../widgets/division_text_field.dart';

class AddDivision extends StatelessWidget {
  const AddDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Division'),
      ),
      body: SingleChildScrollView(
        child: BackgroundImage(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Form(
              key: UniversalKey.formKey,
              child: Column(
                children: [
                  const DivisionTextField(
                    labelString: Text('Division Title'),
                    hintString: 'Enter Division Title!',
                    linesCount: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  (const DivisionTextField(
                    labelString: Text('Division Details'),
                    hintString: 'Enter Division Details!',
                    linesCount: 5,
                  )),
                  const SizedBox(
                    height: 50,
                  ),
                  const DivisionTextField(
                    labelString: Text('عنوان القسم'),
                    hintString: 'أدخل عنوان القسم!',
                    linesCount: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  (const DivisionTextField(
                    labelString: Text('تفاصيل القسم'),
                    hintString: 'أدخل تفاصيل القسم!',
                    linesCount: 5,
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'Add  أضف',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
