import 'package:flutter/material.dart';

class ScoreSubmissionScreen extends StatelessWidget {
  const ScoreSubmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Score Submission"),
      ),

      body: ListView(
        padding:
            const EdgeInsets.all(16),

        children: [

          Card(
            child: ListTile(
              title:
                  const Text("Player A vs Player B"),
              subtitle:
                  const Text("LIVE MATCH"),
              trailing: ElevatedButton(
                onPressed: () {},
                child:
                    const Text("Submit"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}