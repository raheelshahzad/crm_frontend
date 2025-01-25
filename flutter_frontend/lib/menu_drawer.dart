import 'package:flutter_frontend/about_page.dart';
import 'package:flutter_frontend/second_page.dart';
import 'package:flutter/material.dart';

import 'TenantSignUp.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to HomePage
              Navigator.pop(context); // Close the drawer
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.access_alarms_outlined),
            title: Text('Second Page'),
            onTap: () {
              // Navigate to SettingsPage (you can create this later)
              Navigator.pop(context); // Close the drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              // Navigate to SettingsPage (you can create this later)
              Navigator.pop(context); // Close the drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration_rounded),
            title: Text('Register REIT Fund Management Company'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => TenantSignUp()));
            },
          )
        ],
      ),
    );
  }
}