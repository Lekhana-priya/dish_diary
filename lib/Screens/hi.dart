import 'package:flutter/material.dart';

class hi extends StatelessWidget {
  const hi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Text(
            'Suggestions for New Dishes',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'New Dish Suggestion',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Reason for Adding New Dish',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Implement your submit logic here
                // For demonstration, just print the values
                print('Submitted');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.deepOrange, // Text color
              ),
              child: Text('Submit'),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Contact the Editor:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Phone: +91 9653214872\nEmail: LPco@example.com',
            style: TextStyle(fontSize: 14.0),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Developer Details:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Developed by: Lekhanapriya\nContact: developer@example.com',
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: hi(),
  ));
}
