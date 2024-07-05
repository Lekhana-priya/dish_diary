import 'package:flutter/material.dart';
import 'package:myapp/files/Accounts.dart'; 
import 'package:myapp/files/about.dart';
import 'package:myapp/files/set.dart';// Adjust the path based on your project structure

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Shiny'),
            accountEmail: Text('user@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/f3/3b/6d/f33b6dbcddc9e307e2baf23d097fc75b.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.deepOrange, // Background color of the header
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.person_3_rounded,
                color: Colors.red,
              ),
              title: Text('MyProfiles'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccounts()),
                );
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.blue.shade700,
              ),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => AboutPage()),
                 );
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey.shade800,
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => SettingsPage()),
                 );
              },
            ),
          ),
        ],
      ),
    );
  }
}
