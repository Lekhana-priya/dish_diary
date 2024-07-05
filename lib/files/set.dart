import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade200,
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        children: <Widget>[
          ListTile(
            title: Text('Notifications'),
            subtitle: Text('Enable or disable notifications'),
          ),
          Divider(),
          ListTile(
            title: Text('Dark Mode'),
            subtitle: Text('Enable dark mode for a better viewing experience'),
          ),
          Divider(),
          ListTile(
            title: Text('Language'),
            subtitle: Text('Select your preferred language'),
          ),
          Divider(),
          ListTile(
            title: Text('Help & Feedback'),
            subtitle: Text('Get help or provide feedback'),
          ),
          Divider(),
          ListTile(
            title: Text('About Us'),
            subtitle: Text('Learn more about Dish Diary'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
