import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuyisi/kuyisi/presentation/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Get.off(() => MainScreen());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.my_library_books_rounded,
          size: 32,
        ),
      ),
    );
  }
}
