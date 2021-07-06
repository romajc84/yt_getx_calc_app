import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Size sizeV;
  final TextEditingController? editingController;

  const CustomTextField({required this.sizeV, this.editingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: sizeV.height * 0.08,
      width: sizeV.width * 0.46,
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
