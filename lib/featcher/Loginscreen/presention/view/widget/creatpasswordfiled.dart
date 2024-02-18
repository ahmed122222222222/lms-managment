import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms/core/styel.dart';

class CustomPasswordTextFormFiled extends StatefulWidget {
  const CustomPasswordTextFormFiled({Key? key}) : super(key: key);

  @override
  _CustomPasswordTextFormFiledState createState() =>
      _CustomPasswordTextFormFiledState();
}

class _CustomPasswordTextFormFiledState
    extends State<CustomPasswordTextFormFiled> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: TextFormField(
        obscureText: _obscureText,
        validator: (v) {
          if (v!.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: _obscureText
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          labelText: "Enter your password",
          labelStyle: Styels.font16,
        ),
      ),
    );
  }
}
