import 'package:flutter/material.dart';

class MyAccounts extends StatelessWidget {
  const MyAccounts ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade200,
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pic.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Shiny',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'shine23@example.com',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 132, 130, 130),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
