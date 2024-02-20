import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart'; // استيراد الحزمة الجديدة

import 'package:lms/featcher/Coureses/persention/manager/material/getmatieral_cubit.dart';

class LecListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetmatieralCubit, GetmatieralState>(
      builder: (context, state) {
        if (state is GetmatieralSucess) {
          return GridView.builder(
              itemCount: state.course.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 0,
                  childAspectRatio: 2.2),
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            const Icon(Icons.folder),
                            const SizedBox(
                              width: 3,
                            ),
                            Flexible(
                              child: AutoSizeText(
                                // تغيير هنا إلى AutoSizeText
                                state.course[index].lectureName!,
                                maxLines: 4, // تحديد الحد الأقصى لعدد السطور
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
        } else if (state is GetmatieralLoad) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return SizedBox();
        }
      },
    );
  }
}
