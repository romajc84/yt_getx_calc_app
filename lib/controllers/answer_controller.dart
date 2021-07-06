import 'package:get/get.dart';
import 'package:yt_getx_calc_app/models/math_model.dart';

class AnswerController extends GetxController {
  var answer = 0.obs;

  int get finalAnswer => answer.value;

  calculate(MathModel mathModel) {
    answer.value =
        int.parse(mathModel.firstNumber) + int.parse(mathModel.secondNumber);
  }
}
