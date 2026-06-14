import 'package:flutter/material.dart';

import '../screens/auth/login_screen.dart';
import '../screens/guest/announcements_screen.dart';
import '../screens/guest/efootball_screen.dart';
import '../screens/guest/fc26_screen.dart';
import '../screens/guest/fc_mobile_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF050505),
        child: ListView(
          children: [

            const DrawerHeader(
              child: Column(
                children: [
                  Icon(
                    Icons.sports_esports,
                    size: 60,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "BallersHQ",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.campaign),
              title: const Text("Announcements"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const AnnouncementsScreen(),
                  ),
                );
              },
            ),

            ExpansionTile(
              leading:
                  const Icon(Icons.sports_soccer),
              title:
                  const Text("FC Mobile"),

              children: [

                ListTile(
                  title: const Text(
                    "Premier League",
                  ),
                  onTap: () {},
                ),

                ListTile(
                  title: const Text(
                    "LaLiga",
                  ),
                  onTap: () {},
                ),

                ListTile(
                  title: const Text(
                    "Tournament",
                  ),
                  onTap: () {},
                ),

                ListTile(
                  title: const Text(
                    "Giveaways",
                  ),
                  onTap: () {},
                ),
              ],
            ),

            ListTile(
              leading:
                  const Icon(Icons.sports),
              title:
                  const Text("eFootball"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const EFootballScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading:
                  const Icon(Icons.sports),
              title:
                  const Text("FC26"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const FC26Screen(),
                  ),
                );
              },
            ),

            const Divider(),

            ListTile(
              leading:
                  const Icon(Icons.login),
              title:
                  const Text("Login"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}