
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/variables.dart';
import '../screens/auth/login.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/loginground.PNG',
        fit: BoxFit.fill,
      ),
      title: Text(
        "شركة حلم المستقبل لخدمات الانترنت والاتصالات",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: lightappbar,
        ),
      ),
      backgroundColor: Colors.white,
      navigator: Login(),
      durationInSeconds: 3,
    );
  }
}
