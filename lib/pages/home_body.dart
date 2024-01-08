import 'package:flutter/material.dart';
import 'package:flutter_clone_youtube/controller/home_controller.dart';
import 'package:flutter_clone_youtube/pages/plus_body.dart';
import 'package:get/get.dart';

class HomeBody extends GetView<HomeController> {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Text('home')
        ],
      )
    );
  }
}
