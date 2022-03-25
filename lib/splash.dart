import 'package:flutter/material.dart';
import 'home.dart';

// ignore: camel_case_types
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

// ignore: camel_case_types
class _splashState extends State<splash> {
  @override
  initState() {
    super.initState();
    _naigatetohome();
  }

  _naigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {
      // ignore: prefer_typing_uninitialized_variables
      var navigator;
      navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(
                    title: 'Splash',
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Image(
        image: AssetImage('assets/logo.png'),
        width: 400,
        height: 400,
      )),
    );
  }
}
