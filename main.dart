import 'dart:io';
import 'package:bike_project/screens/home.dart';
import 'package:bike_project/screens/otp.dart';
import 'package:bike_project/screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyD0sPQwYjN7cAh8QlMoNmkPLESupfXXgG8",
        appId: "1:216528158205:android:222ecb5ab66986f403ad94",
        messagingSenderId: "216528158205",
        projectId: "bike-db1c2",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => const AnimatedSVGDemo(),
        'login': (context) =>  const LoginPage(),
        'otp': (context) => const OtpVerificationPage(),
        'MyHome': (context) => const MyHome(),
      },
      
    );
  }

  
}
