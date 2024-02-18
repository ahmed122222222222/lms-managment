import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled({Key? key}) : super(key: key);

  @override
  _CustomTextFormFiledState createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: TextFormField(
        validator: (v) {
          if (v!.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: "Email",
          labelStyle: _isFocused
              ? Styels.font16.copyWith(color: Colors.blue)
              : Styels.font16,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blue, // لون الحدود عند التركيز
              width: 2.0, // عرض الحدود عند التركيز
            ),
          ),
        ),
        onChanged: (value) {
          setState(() {
            _isFocused = value.isNotEmpty;
          });
        },
        onTap: () {
          setState(() {
            _isFocused = true;
          });
        },
        onFieldSubmitted: (value) {
          setState(() {
            _isFocused = false;
          });
        },
      ),
    );
  }
}
