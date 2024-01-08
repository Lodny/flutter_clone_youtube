import 'package:flutter/material.dart';

class LibraryBody extends StatelessWidget {
  const LibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
      ),
      body: Column(
        children: [
          Text('Library')
        ],
      ),
    );
  }
}
