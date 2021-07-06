import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_getx_calc_app/widgets/custom_text_field.dart';
import 'package:yt_getx_calc_app/widgets/rbtn.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Answer',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
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
                ),
                CustomTextField(
                  sizeV: MediaQuery.of(context).size,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            RBtn(
              btnText: 'Calculate',
              size: MediaQuery.of(context).size,
            ),
          ],
        ),
      ),
    );
  }
}
