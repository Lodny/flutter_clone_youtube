import 'package:flutter/material.dart';

class PlusBody extends StatelessWidget {
  const PlusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plus'),
      ),
      body: Column(
        children: [
          Text('Plus')
        ],
      ),
    );
  }
}
