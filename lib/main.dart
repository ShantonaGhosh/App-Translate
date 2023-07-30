import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/home_screen.dart';

Future<void> main()async {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Language  translator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}


