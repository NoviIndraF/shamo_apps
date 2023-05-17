import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/cart_page.dart';
import 'package:shamo_apps/pages/detail_chat_page.dart';
import 'package:shamo_apps/pages/edit_profile_page.dart';
import 'package:shamo_apps/pages/home/main_page.dart';
import 'package:shamo_apps/pages/product_page.dart';
import 'package:shamo_apps/pages/sign_in_page.dart';
import 'package:shamo_apps/pages/sign_up_page.dart';
import 'package:shamo_apps/pages/splash_page.dart';
import 'package:shamo_apps/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/'                 :(context) => SplashPage(),
        '/sign-in'          :(context) => SignInPage(),
        '/sign-up'          :(context) => SignUpPage(),
        '/main'             :(context) => MainPage(),
        '/detail-chat'      :(contex) => DetailChatPage(),
        '/edit-profile'     :(contex) => EditProfilePage(),
        '/product'          :(contex) => ProductPage(),
        '/cart'             :(contex) =>CartPage(),
      },
    );
  }
}
