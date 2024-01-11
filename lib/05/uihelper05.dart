import 'package:flutter/material.dart';

class UiHelperr {
  static CustumTextField(TextEditingController controller, String text,
      IconData icondata, bool Tohide) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: TextField(
        obscureText: Tohide,
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(icondata),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  static CustumButton(VoidCallback callback, String text , Color color , Color textcolor, double height , double width) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Text(text)),
    );
  }
}
