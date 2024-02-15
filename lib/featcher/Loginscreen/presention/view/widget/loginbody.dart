import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/utils/image.dart';
import 'package:lms/featcher/HomeScreen/presention/view/Home.dart';
import 'package:lms/featcher/Loginscreen/presention/manager/cubit/login_cubit.dart';
import 'package:lms/featcher/Loginscreen/presention/view/fristrest.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/creatpasswordfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/customtextfiled.dart';
import 'package:lms/featcher/Loginscreen/presention/view/widget/mainbuttom.dart';

class LOgInBody extends StatefulWidget {
  const LOgInBody({Key? key}) : super(key: key);

  @override
  State<LOgInBody> createState() => _LOgInBodyState();
}

class _LOgInBodyState extends State<LOgInBody> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // Listen to state changes and navigate accordingly
        if (state is LoginSucess) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        } else if (state is LoginFailuer) {
          // Handle login failure, maybe show an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login failed!'),backgroundColor: Colors.blue,),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: globalKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 22,
                right: 22,
                top: MediaQuery.of(context).size.height * .00001,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    child: Image.asset(Images.Loginimage),
                  ),
                  Center(
                    child: Text(
                      "Welcome!",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "You can login here",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const CustomTextFormFiled(),
                  const SizedBox(
                    height: 35,
                  ),
                  const CustomPasswordTextFormFiled(),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => Massagerest()),
                    ),
                    child: Text(
                      "Forget password ?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xff2295EF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CutamMainButtom(
                    onPressed: () {
                      if (globalKey.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(context).Login(
                          "Account/login",
                          "AbdulMajeedSallam@gmail.com",
                          
                        );
                      }
                    },
                    nameaction: 'Login',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
