import 'package:flutter/material.dart';

import 'content/content.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const SignInPage (),
        '/sign-in':(context) => const SignInPage (),
        '/sign-up':(context) => const SignUpPage (),
        '/menu':(context) => const TopupScreen (),
      },
    );
  }
}

