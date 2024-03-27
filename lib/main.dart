import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'binding.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';
// import 'dart:html' as html;
// import 'package:url_strategy/url_strategy.dart';


late SharedPreferences sharedPref ;
var idShow = sharedPref.get("id");
var usernameShow = sharedPref.get("username");

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();


  await initialServices();

  // Register the event listener for beforeunload
/*  html.window.onBeforeUnload.listen((html.Event e) {
    // Cancel the event to prevent the browser from showing a confirmation dialog
    e.preventDefault();

    // Reload the page
    html.window.location.reload();

  });*/

 // setPathUrlStrategy();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      initialBinding: MyBinding(),
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Technical support knowledge base',
      theme: controller.appTheme,
/*       home: loggedIn == false ?  const Login() : const MyHome(),
        routes: {
          AppRoute.login : (context)=> const Login(),
          AppRoute.signup : (context)=> const SignUp(),
          AppRoute.homescreen : (context)=> const MyHome(),
        },*/
       getPages: routes,
    );
  }
}
