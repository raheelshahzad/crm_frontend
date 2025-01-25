import 'package:flutter/material.dart';
import 'menu_drawer.dart'; // Import the drawer

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      drawer: MenuDrawer(), // Add the drawer here
      body: Center(
        child: Text('Welcome to the About Page!'),
      ),
    );
  }
}
