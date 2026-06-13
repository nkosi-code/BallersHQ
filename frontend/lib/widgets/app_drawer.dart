import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(

        children: [

          const DrawerHeader(
            child: Text(
              "BallersHQ",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),

          ListTile(
            title: const Text("Home"),
            onTap: () {},
          ),

          ListTile(
            title:
                const Text("Announcements"),
            onTap: () {},
          ),

          ListTile(
            title:
                const Text("FC Mobile"),
            onTap: () {},
          ),

          ListTile(
            title:
                const Text("eFootball"),
            onTap: () {},
          ),

          ListTile(
            title: const Text("FC26"),
            onTap: () {},
          ),

          const Divider(),

          ListTile(
            title: const Text("Login"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}