import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: const Color.fromARGB(255, 183, 65, 154),
              ),
              gradient: const RadialGradient(
                colors: [
                  Color.fromARGB(255, 226, 167, 187),
                  Color.fromARGB(255, 226, 51, 165),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Welcome to My App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: 180,
            child: Card(
              color: const Color.fromARGB(255, 242, 102, 216),
              elevation: 10,
              shadowColor: Colors.deepPurple,
              margin: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "Learning Flutter",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
