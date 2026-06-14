import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const AppDrawer(),

      appBar: AppBar(
        title: const Text('BallersHQ'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              "Welcome to BallersHQ",
              style: TextStyle(
                fontSize: 28,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Home of FC Mobile Esports Tournaments.",
            ),

            const SizedBox(height: 20),

            Card(
              child: Padding(
                padding:
                    const EdgeInsets.all(20),

                child: Column(
                  children: const [

                    Text("Mission"),

                    SizedBox(height: 10),

                    Text(
                      "Create a competitive esports community."
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}