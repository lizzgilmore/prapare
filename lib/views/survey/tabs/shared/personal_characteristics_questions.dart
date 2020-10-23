import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prapare/strings.dart';
import 'package:prapare/themes.dart';
&import 'package:prapare/views/survey/tabs/shared/personal_characteristics_controller.dart';
import 'package:prapare/views/survey/tabs/shared/personal_characteristics_data.dart';

//todos: 1) make the selections persistent (currently changes revert back to defaults when you switch between tabs - whyyyy??) and 2) make it write to a spreadsheet (for now), and ultimately write to a FHIR database

class PersonalCharacteristicsSurveyQuestions extends StatelessWidget {
  Widget build(BuildContext context) {
    TextTheme textTheme = context.textTheme;
    return GetX<PersonalCharacteristicsController>(
        init: Get.put(PersonalCharacteristicsController()),
        builder: (controller) {
          var data = controller.data;
          return Column(
            children: <Widget>[
              new Text('1. Are you Hispanic or Latino?\n'),
              RadioListTile<Hispanic>(
                title: const Text('Yes'),
                value: Hispanic.yes,
                groupValue: data.hispanic.value,
                onChanged: (Hispanic value) {
                  data.hispanic.value = value;
                  print("${data.hispanic.value} value:$value");
                  controller.update();
                },
              ),
              RadioListTile<Hispanic>(
                title: const Text('No'),
                value: Hispanic.no,
                groupValue: data.hispanic.value,
                onChanged: (Hispanic value) {
                  data.hispanic.value = value;
                  print("${data.hispanic.value} value:$value");
                  controller.update();
                },
              ),
              RadioListTile<Hispanic>(
                title: const Text('I choose not to answer this question'),
                value: Hispanic.choosenottoanswer,
                groupValue: data.hispanic.value,
                onChanged: (Hispanic value) {
                  data.hispanic.value = value;
                  print("${data.hispanic.value} value:$value");
                  controller.update();
                },
              ),
              new Text(
                  '\n\n\n2. Which race(s) are you? Check all that apply.\n'),
              RadioListTile<Race>(
                  title: const Text('American Indian/Alaskan Native'),
                  value: Race.americanindian,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              RadioListTile<Race>(
                  title: const Text('Asian'),
                  value: Race.asian,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              RadioListTile<Race>(
                  title: const Text('Black/African American'),
                  value: Race.black,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              RadioListTile<Race>(
                  title: const Text('Native Hawaiian'),
                  value: Race.nativehawaiian,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              RadioListTile<Race>(
                  title: const Text('Pacific Islander'),
                  value: Race.pacificislander,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              RadioListTile<Race>(
                  title: const Text('White'),
                  value: Race.white,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              RadioListTile<Race>(
                  title: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Other (please write)'),
                      onChanged: (pony) {
                        print("First text fields: $pony");
                      }
                      //todo figure out how to force the cursor to appear in the text box if the user selects the radio button: https://flutter.dev/docs/cookbook/forms/focus
                      //todo figure out how to force the keyboard to close when the user taps outside of this formfield
                      //todo figure out how to save the input to the database: https://flutter.dev/docs/cookbook/forms/retrieve-input
                      ),
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),

              RadioListTile<Race>(
                  title: const Text('I choose not to answer this question'),
                  value: Race.choosenottoanswer,
                  groupValue: data.race.value,
                  onChanged: (Race value) {
                    data.race.value = value;
                  }),
              new Text(
                  '\n\n\n3. At any point in the past 2 years, has season or migrant farm work been your or your family\'s main source of income?'),
// todo figure out how to adjust padding for question text
              RadioListTile<FarmWork>(
                title: const Text('Yes'),
                value: FarmWork.yes,
                groupValue: data.farmWork.value,
                onChanged: (FarmWork value) {
                  data.farmWork.value = value;
                },
              ),
              RadioListTile<FarmWork>(
                title: const Text('No'),
                value: FarmWork.no,
                groupValue: data.farmWork.value,
                onChanged: (FarmWork value) {
                  data.farmWork.value = value;
                },
              ),
              RadioListTile<FarmWork>(
                title: const Text('I choose not to answer this question'),
                value: FarmWork.choosenottoanswer,
                groupValue: data.farmWork.value,
                onChanged: (FarmWork value) {
                  data.farmWork.value = value;
                },
              ),
              new Text(
                  '\n\n\n4. Have you been discharged from the armed forces of the United States?'),
              RadioListTile<ArmedForces>(
                title: const Text('Yes'),
                value: ArmedForces.yes,
                groupValue: data.armedForces.value,
                onChanged: (ArmedForces value) {
                  data.armedForces.value = value;
                },
              ),
              RadioListTile<ArmedForces>(
                title: const Text('No'),
                value: ArmedForces.no,
                groupValue: data.armedForces.value,
                onChanged: (ArmedForces value) {
                  data.armedForces.value = value;
                },
              ),
              RadioListTile<ArmedForces>(
                title: const Text('I choose not to answer this question'),
                value: ArmedForces.choosenottoanswer,
                groupValue: data.armedForces.value,
                onChanged: (ArmedForces value) {
                  data.armedForces.value = value;
                },
              ),
              new Text(
                  '\n\n\n5. What language are you most comfortable speaking?'),
              RadioListTile<Language>(
                title: const Text('English'),
                value: Language.english,
                groupValue: data.language.value,
                onChanged: (Language value) {
                  data.language.value = value;
                },
              ),
              RadioListTile<Language>(
                title: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Language other than English (please write)'),
                  //todo figure out how to force the keyboard to close when the user taps outside of this formfield
                ),
                value: Language.other,
                groupValue: data.language.value,
                onChanged: (Language value) {
                  data.language.value = value;
                },
              ),
              RadioListTile<Language>(
                title: const Text('I choose not to answer this question'),
                value: Language.choosenottoanswer,
                groupValue: data.language.value,
                onChanged: (Language value) {
                  data.language.value = value;
                },
              ),
            ],
          );
        });
  }
}