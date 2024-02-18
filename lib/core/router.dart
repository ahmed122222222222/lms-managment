import 'package:go_router/go_router.dart';
import 'package:lms/featcher/Loginscreen/presention/view/Login.dart';
import 'package:lms/featcher/splach%20screen/presntion/view/splash.dart';
import 'package:lms/featcher/tips/presention/view/tips.dart';

abstract class router {
  static const kHomeView = '/Tips1';
  static const Log = '/Login';

  static final routerr = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splashscreen(),
    ),
    GoRoute(path: kHomeView, builder: (context, state) => const Tips1()),
    GoRoute(
      path: Log,
      builder: (context, state) => Login(),
    ),
  ]);
}
