import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyTap1 extends StatelessWidget {
  const BodyTap1({super.key, required this.titelpage, required this.widget});
  final String titelpage;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            titelpage,
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: widget,
                      )))
        ],
      ),
    );
  }
}
