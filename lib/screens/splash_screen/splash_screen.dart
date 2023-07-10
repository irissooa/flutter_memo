import 'package:flutter/material.dart';
import 'package:note/constants.dart';
import 'package:note/routes.dart';
import 'package:note/screens/homepage/homepage_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _goToHomePage();
  }

  _goToHomePage() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacementNamed(context, RouteManager.homePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/icon2.png",
            ),
            SizedBox(height: 20),
            const Text(
              "Write Memo",
              style: kHeaderDarkTitle,
            ),
          ],
        ),
        color: kGreen,
      ),
    );
  }
}
