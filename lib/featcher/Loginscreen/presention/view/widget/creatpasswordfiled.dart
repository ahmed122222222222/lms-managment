import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';

class CustomPasswordTextFormFiled extends StatelessWidget {
  const CustomPasswordTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(3),
      child: TextFormField(
        obscureText: true,
        validator: (v) {
          if (v!.isEmpty) {
            return "this filed is required";
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.remove_red_eye),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            label: const Text(
              "enter your password",
              style: Styels.font16,
            )),
      ),
    );
  }
}
