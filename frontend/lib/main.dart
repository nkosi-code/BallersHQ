import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme.dart';

import 'providers/auth_provider.dart';

import 'screens/guest/welcome_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],

      child: const BallersHQ(),
    ),
  );
}

class BallersHQ extends StatelessWidget {
  const BallersHQ({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner:
          false,

      title: "BallersHQ",

      theme: AppTheme.darkTheme,

      home: const WelcomeScreen(),
    );
  }
}