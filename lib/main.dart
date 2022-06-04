import 'package:assignment/home.dart';
import 'package:assignment/hompage.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const MyApp());
}

// void main() {
// runApp(DevicePreview(
// 	enabled: true,
// 	builder: (context) => const MyApp(),
// ));
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Homen(),
    );
  }
}
