import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_getx_calc_app/controllers/answer_controller.dart';
import 'package:yt_getx_calc_app/controllers/math_model_controller.dart';
import 'package:yt_getx_calc_app/widgets/custom_text_field.dart';
import 'package:yt_getx_calc_app/widgets/rbtn.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  late TextEditingController editingControllerOne;
  late TextEditingController editingControllerTwo;

  late String firstValue;
  late String secondValue;

  @override
  Widget build(BuildContext context) {
    editingControllerOne = TextEditingController();
    editingControllerTwo = TextEditingController();

    MathModelController mathModelController = Get.put(MathModelController());

    AnswerController answerController = Get.put(AnswerController());

    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${answerController.finalAnswer}',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  sizeV: MediaQuery.of(context).size,
                  editingController: editingControllerOne,
                ),
                CustomTextField(
                  sizeV: MediaQuery.of(context).size,
                  editingController: editingControllerTwo,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                firstValue = editingControllerOne.text;
                secondValue = editingControllerTwo.text;
                mathModelController.numberChanges(firstValue, secondValue);
              },
              child: RBtn(
                btnText: 'Calculate',
                size: MediaQuery.of(context).size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
