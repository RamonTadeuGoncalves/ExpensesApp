import 'package:easy_splash_screen/easy_splash_screen.dart';
import '../home.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/money.png',
      ),
      logoSize: 100,
      title: const Text(
        "Despesas Pessoais",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 65, 65, 65),
        ),
      ),
      backgroundColor: Colors.purple,
      showLoader: true,
      // loadingText: const Text("Loading..."),
      navigator: const ExpensesApp(),
      durationInSeconds: 5,
    );
  }
}
