import 'package:flutter/material.dart';

class BracketScreen extends StatelessWidget {
  const BracketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tournament Brackets"),
      ),
      body: const Center(
        child: Text("Knockout Brackets"),
      ),
    );
  }
}