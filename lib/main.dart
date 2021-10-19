import 'package:coorg/screens/home_page.dart';
import 'package:coorg/screens/splash_screen.dart';
import 'package:coorg/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
     // home: SplashScreen(),
     initialRoute: MyRoutes.splashRoute,
      routes: {
       // "/": (context) => LoginPage(),
        MyRoutes.splashRoute: (context) => SplashScreen(),
        MyRoutes.homepageRoute: (context) => HomePage(),
     //   MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
