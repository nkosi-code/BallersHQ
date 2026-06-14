import 'package:flutter/material.dart';

class PremierLeagueScreen extends StatelessWidget {
  const PremierLeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Premier League"),
      ),
      body: const Center(
        child: Text("League Table"),
      ),
    );
  }
}