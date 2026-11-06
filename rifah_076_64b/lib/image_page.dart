import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePage"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
      ),
      body: Column(
        children: [
          Image.asset('assets/flutterimage.jpg'),
          Image.asset('assets/fimage.jpg'),
        ],
      ),
    );
  }
}
