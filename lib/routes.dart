
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:support/view/newWebPages/splashScreen.dart';
import 'package:support/view/screens/auth/login.dart';
import 'package:support/view/screens/auth/signup.dart';
import 'core/constants/route_names.dart';
import 'homescreen.dart';
import 'main.dart';


List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: ()=> sharedPref.getString("id") == null ? Login() : SplashPage()  ,)  ,
  //Auth
  GetPage(name: AppRoute.login, page: () => Login()),
  GetPage(name: AppRoute.signup, page: () => SignUp()),
  //Home
  GetPage(name: AppRoute.homescreen, page: () => MyHome()),

/*  GetPage(name: AppRoute.forgetPassword, page: () => ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => ResetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => VerifyCode()),
  GetPage(
      name: AppRoute.successResetPassword, page: () => SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => SuccessSignUp()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: () => VerifyCodeSignUp()),

  GetPage(name: AppRoute.goToMyNotes, page: () => NotesPage()),
  GetPage(name: AppRoute.goToArticals, page: () => ArticlePage()),
  GetPage(name: AppRoute.goToAddNotes, page: () => AddNotes()),*/


];

