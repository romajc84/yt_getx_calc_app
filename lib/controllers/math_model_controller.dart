import 'package:get/get.dart';
import 'package:yt_getx_calc_app/controllers/answer_controller.dart';
import 'package:yt_getx_calc_app/models/math_model.dart';

class MathModelController extends GetxController {
  var mathModel = MathModel('0', '0').obs;
  AnswerController answerController = Get.put(AnswerController());

  numberChanges(String first, String second) {
    mathModel.value = MathModel(first, second);
    answerController.calculate(mathModel.value);
  }
}
