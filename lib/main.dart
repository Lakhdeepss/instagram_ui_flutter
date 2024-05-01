import 'package:flutter/material.dart';
import 'package:practice_app/pages/login_page.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/util/MyRoutes.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomePage,
      routes: {
        MyRoutes.LoginPage: (context) => const login_page(),
        MyRoutes.HomePage: (context) => const Home_page(),
      },
    );
  }
}
