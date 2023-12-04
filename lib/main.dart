import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/layout/layout_manager.dart';
import 'package:whatsapp_clone/platforms/mobile_screen_platform.dart';
import 'package:whatsapp_clone/platforms/web_screen_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const SplashScreen(),
    );
  }
}

//splash screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (ctx) => const LayoutManager(
                    mobileScreenBuilder: MobileScreenPlatform(),
                    webScreenBuilder: WebScreenPlatform(),
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/whatsapp.png",
              height: 100,
            ),
            const Spacer(),
            const Text(
              "from",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const Text(
              ":) Niroj (:",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
