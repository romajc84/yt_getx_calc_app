import 'package:flutter/material.dart';

class RBtn extends StatelessWidget {
  final String btnText;
  final Size size;

  RBtn({required this.btnText, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: size.height * 0.08,
      width: size.width * 0.46,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          btnText,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
