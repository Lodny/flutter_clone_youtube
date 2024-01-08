import 'package:flutter/material.dart';
import 'package:flutter_clone_youtube/binding/home_binding.dart';
import 'package:flutter_clone_youtube/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: HomeBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
      ],
    );
  }
}
