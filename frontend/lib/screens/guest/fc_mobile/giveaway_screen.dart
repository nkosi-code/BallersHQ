import 'package:flutter/material.dart';

class GiveawayScreen extends StatelessWidget {
  const GiveawayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giveaways"),
      ),
      body: const Center(
        child: Text("Current Giveaways"),
      ),
    );
  }
}