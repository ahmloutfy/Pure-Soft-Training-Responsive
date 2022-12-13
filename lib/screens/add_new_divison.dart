import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/alert_for_user.dart';
import '../widgets/background_image.dart';
import '../widgets/division_text_field.dart';

class EditingControllers {
  static TextEditingController? enTitleInput = TextEditingController(),
      enDescriptionInput = TextEditingController(),
      arTitleInput = TextEditingController(),
      arDescriptionInput = TextEditingController();
}

class AddDivision extends StatelessWidget {
  const AddDivision({super.key});

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
                  DivisionTextField(
                    labelString: const Text('Division Title'),
                    hintString: 'Enter Division Title!',
                    linesCount: 1,
                    myController: EditingControllers.enTitleInput,
                    myInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  (DivisionTextField(
                    labelString: const Text('Division Details'),
                    hintString: 'Enter Division Details!',
                    linesCount: 5,
                    myController: EditingControllers.enDescriptionInput,
                    myInputAction: TextInputAction.next,
                  )),
                  const SizedBox(
                    height: 50,
                  ),
                  DivisionTextField(
                    labelString: const Text('عنوان القسم'),
                    hintString: 'أدخل عنوان القسم!',
                    linesCount: 1,
                    myController: EditingControllers.arTitleInput,
                    myInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  (DivisionTextField(
                    labelString: const Text('تفاصيل القسم'),
                    hintString: 'أدخل تفاصيل القسم!',
                    linesCount: 5,
                    myController: EditingControllers.arDescriptionInput,
                    myInputAction: TextInputAction.done,
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      if (EditingControllers.enTitleInput!.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const UserAlert(myText: 'English Title'),
                        );
                      }

                      if (EditingControllers.enDescriptionInput!.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const UserAlert(myText: 'English Description'),
                        );
                      }

                      if (EditingControllers.arTitleInput!.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const UserAlert(myText: 'عنوان عربي'),
                        );
                      }

                      if (EditingControllers.arDescriptionInput!.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const UserAlert(myText: 'وصف عربي'),
                        );
                      }

                      {}
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
