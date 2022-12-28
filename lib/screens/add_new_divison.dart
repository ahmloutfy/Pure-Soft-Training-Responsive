import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/alert_for_user.dart';
import '../widgets/background_image.dart';
import '../widgets/division_text_field.dart';

class AddDivision extends StatefulWidget {
  const AddDivision({super.key});

  @override
  State<AddDivision> createState() => _AddDivisionState();
}

class _AddDivisionState extends State<AddDivision> {
  var englishTitleValidator = EditingControllers.enTitleInput!.text;
  var englishDescriptionValidator = EditingControllers.enDescriptionInput!.text;
  var arabicTitleValidator = EditingControllers.arTitleInput!.text;
  var arabicDescriptionValidator = EditingControllers.arDescriptionInput!.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Add New Division   أضف قسم جديد'),
        ),
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
                    validator: (englishTitleValidator) {
                      if (englishTitleValidator.isEmpty ||
                          !LanguagesValidators.englishValidator
                              .hasMatch(englishTitleValidator)) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const EnglishUserAlert(myText: 'English Title'),
                        );
                      }
                      return null;
                    },
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
                    validator: (englishDescriptionValidator) {
                      if (englishDescriptionValidator.isEmpty ||
                          !LanguagesValidators.englishValidator
                              .hasMatch(englishDescriptionValidator)) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const EnglishUserAlert(
                                  myText: 'English Description'),
                        );
                      }
                      return null;
                    },
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
                    validator: (arabicTitleValidator) {
                      if (arabicTitleValidator.isEmpty ||
                          !LanguagesValidators.arabicValidator
                              .hasMatch(arabicTitleValidator)) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const ArabicUserAlert(myText: 'عنوان عربي'),
                        );
                      }
                      return null;
                    },
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
                    validator: (arabicDescriptionValidator) {
                      if (arabicDescriptionValidator.isEmpty ||
                          !LanguagesValidators.arabicValidator
                              .hasMatch(arabicDescriptionValidator)) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const ArabicUserAlert(myText: 'وصف عربي'),
                        );
                      }
                      return null;
                    },
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
                      UniversalKey.formKey.currentState!.validate();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'Add أضف',
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
