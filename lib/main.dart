
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/core/utils/Dio.dart';
import 'package:lms/featcher/Loginscreen/presention/manager/cubit/login_cubit.dart';
import 'package:lms/featcher/splach%20screen/presntion/view/splash.dart';
import 'package:intl/date_symbol_data_local.dart';
void main() {
    initializeDateFormatting();
  runApp(DevicePreview(builder:(context)=> MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final Api api=Api(Dio());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      providers: [BlocProvider(create: ((context) =>LoginCubit(api) ))],
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'fon',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Splashscreen(),
      ),
    );
  }
}
