import 'package:flutter/material.dart';

class LaligaScreen extends StatelessWidget {
  const LaligaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LaLiga"),
      ),
      body: const Center(
        child: Text("LaLiga Table"),
      ),
    );
  }
}