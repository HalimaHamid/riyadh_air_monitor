import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:riyadh_air_monitor/pages/HomePageF.dart';
import 'package:riyadh_air_monitor/pages/dummy_data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final getData data = new getData();
    data.getApiData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/loading-circles.json') ,

      backgroundColor: Colors.white,
      nextScreen: /*const MyHomePage(title: "title")*/  HomePageF(),
      splashIconSize: 250,
      duration: 400,
      splashTransition: SplashTransition.sizeTransition,

    );
  }
}
