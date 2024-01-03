import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: TextFormField(
        validator: (v) {
          if (v!.isEmpty) {
            return "this filed is required";
          }
          return null;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            label: const Text(
              "enter your email",
              style: Styels.font16,
            )),
      ),
    );
  }
}
