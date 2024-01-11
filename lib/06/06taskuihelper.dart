import 'package:flutter/material.dart';

class TaskUiHelper {
  static CustomTextField(
      TextEditingController controller, String text, IconData icondata) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          hintText: text,
          suffixIcon: Icon(icondata),
        ),
      ),
    );
  }

  static CustomContainer(
      double height, double width, Color color) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }

  static CustomContainer1(double height, double width, Color color) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        color: color,
        ),
      ),
    );
  }
}
