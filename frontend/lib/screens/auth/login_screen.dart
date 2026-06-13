import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState()
      => _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {

  String role = "Guest";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(20),

        child: Column(

          children: [

            DropdownButton<String>(

              value: role,

              items: const [

                DropdownMenuItem(
                  value: "Guest",
                  child: Text("Guest"),
                ),

                DropdownMenuItem(
                  value: "Super Admin",
                  child:
                      Text("Super Admin"),
                ),

                DropdownMenuItem(
                  value: "Admin",
                  child: Text("Admin"),
                ),

                DropdownMenuItem(
                  value: "Player",
                  child: Text("Player"),
                ),
              ],

              onChanged: (value) {
                setState(() {
                  role = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}