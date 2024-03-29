import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/utils/image.dart';

import 'package:lms/featcher/Coureses/persention/manager/getcouresecubit/get_courses_cubit.dart';
import 'package:lms/featcher/HomeScreen/presention/view/Home.dart';
import 'package:lms/featcher/Loginscreen/data/model/Loginmodel.dart';
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
        if (state is LoginFailuer) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(
                  child: Text(
                state.errmas,
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
          );
        } else if (state is LoginSucess) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => HomeScreen(
                        loginrespone: state.loginrespone,
                      )));

          BlocProvider.of<GetCoursesCubit>(context)
              .getcourses(state.loginrespone, "Students/CurrentCourcesInfo");
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
                      var Loginmo = Loginmodel(
                          email: "AbdulMajeedSallam@gmail.com",
                          password: "P@ssw0rd");
                      if (globalKey.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(context).login(
                          Loginmo,
                          "Account/login",
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
