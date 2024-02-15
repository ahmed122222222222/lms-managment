import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/featcher/Coureses/persention/view/material.dart';

class ListTitelSubject extends StatefulWidget {
    
  const ListTitelSubject({super.key, });
  @override
  State<ListTitelSubject> createState() => _ListTitelSubjectState();
}

class _ListTitelSubjectState extends State<ListTitelSubject> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("Asset/image/subject.png"),
      title: Text("Parallel Programming",
          style:
              GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500)),
      subtitle: Text(
        "Dr : Amr Masoud",
        style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.normal),
      ),
      trailing: IconButton(
        icon:Image.asset("Asset/image/carbon_next-outline.png"),
        onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChooseAaction()));
    
          
        },
        
      ),
    );
  }
}
