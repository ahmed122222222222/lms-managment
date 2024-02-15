import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/const.dart';
import 'package:lms/featcher/Coureses/persention/view/quize.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Customappbar.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/sacandbuttom.dart';
import 'package:lms/featcher/accout/presenton/view/changepassword.dart';

class Acount extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: SafeArea(
       child: Column(
        children: [
             CustomAppbar(),
          Row(
           
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Image.asset("Asset/image/accoun.png"),
            const columiteam(str1: "cs", str2: "deperment"),
            const columiteam(str1: "4", str2: "level"),
            const columiteam(str1: "3", str2: "gpa"),
            
            ],
          ),
          
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            columiteam(str1: "Ahmed Osama", str2: "id/2031002"),
         
          ],
         ),
         SizedBox(height: 30,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [editbuttom(nameaction: "Show card", onPressed: (){
            showDialog(context: context, builder: (builder)=>card());
          }),editbuttom(nameaction: "log out", onPressed: (){})],),
         SizedBox(height: 50,),
          
          const chaneges(image: "Asset/image/ooui_lock.png", text: "change password"),
          const chaneges(image: "Asset/image/email.png", text: "change email"),
         SizedBox(height: 50,),
        
                  
        ],
       ),
     ),
   );
  }
}

class  columiteam extends StatelessWidget {
  const columiteam({super.key, required this.str1, required this.str2});
  final String str1,str2;
   @override
  Widget build(BuildContext context) {
    return Column(
children: [Text(str1,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
Text(str2,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),)
],
    );
  }
}
class editbuttom extends StatelessWidget {
  const editbuttom({super.key, required this.nameaction,required this.onPressed});
  
  final String nameaction;
  final void Function()? onPressed;
   @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        
        minimumSize: const Size(186, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: const Color(0xFFD9D9D9),
      ),
      child:  Text(
        nameaction,
        style: GoogleFonts.poppins(fontSize: 13,fontWeight:FontWeight.bold,color:Colors.black ),
      ),
    );
  }
}
class chaneges extends StatelessWidget {
  const chaneges({super.key, required this.image, required this.text});
  final String image,text;
   @override
  Widget build(BuildContext context) {
   return ListTile(
        leading: Image.asset(image),
        trailing: IconButton(icon: Icon(Icons.arrow_forward,), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (builder)=>changepassword())); },),
        title: Text(text,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
       );
  }
}
class Logout extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
  return TextButton(
      onPressed: () {
        
      },
      style: TextButton.styleFrom(
        minimumSize: const Size(290, 58),
        padding: const EdgeInsets.only(top: 5, left: 61, right: 80, bottom: 4),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF3B82F6)),
          borderRadius: BorderRadius.circular(0),
        ),
        backgroundColor: Colors.white,
      ),
      child:  Text(
        "log ouT",
        style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: maincolore),
      ),
    );

  }
}
class card extends StatelessWidget {   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:0),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.center,
            colors: [Color(0xff96CCF8), Color(0xff96CCF8)],
          ),
          borderRadius: BorderRadius.circular(15)
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*.23,
          child:  Padding(
            padding:const EdgeInsets.all(8.0),
            child: Row(
              children: [
                 Image.asset("Asset/image/accoun.png")  ,   
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*.06),
                    child: Column(
                     
                    children: [
                      Row(
                       children: [Text("name:",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xff009688),fontWeight: FontWeight.bold),),
                       SizedBox(width: 3,),
                       Text("Ahmed osama naser ",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500),),
                 
                       ],
                      ),
                      SizedBox(height:6,),
                      Row(
                       children: [Text("email:",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xff009688),fontWeight: FontWeight.bold),),
                       SizedBox(width: 3,),
                       Text("Ahmed@gmail.com ",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500),),
                 
                       ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [Text("national id:",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xff009688),fontWeight: FontWeight.bold),),
                       SizedBox(width: 3,),
                       Text("2011252025200",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500),),
                 
                       ],
                      )
                    ],
                                   ),
                  )           
              ],
            ),
          ),
        ),
      ),
    );
  }
}
