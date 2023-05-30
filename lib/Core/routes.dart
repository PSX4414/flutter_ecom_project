import 'package:flutter/widgets.dart';
import 'package:flutter_ecom_project/Pages/home/home.dart';


// Named route will be available here
final Map<String, WidgetBuilder> routes = {
  // SplashScreen.routeName: (context) => SplashScreen(),
  // SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomePage.routeName: (context) => HomePage()
};