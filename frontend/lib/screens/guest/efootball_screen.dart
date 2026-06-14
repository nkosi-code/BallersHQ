import 'package:flutter/material.dart';

class EFootballScreen extends StatelessWidget {
  const EFootballScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("eFootball"),
      ),
      body: const Center(
        child: Text(
          "🚧 UNDER CONSTRUCTION 🚧",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}