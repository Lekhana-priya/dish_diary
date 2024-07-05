import 'package:flutter/material.dart';

class StartersScreen extends StatelessWidget {
  const StartersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Starters'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/star.jpeg'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5), // Dark overlay
                  ),
                ),
                Positioned(
                  top: 80.0,
                  child: Text(
                    "Starters",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            _buildItem('images/star1.jpeg', 'Chicken kebab'),
            SizedBox(height: 10.0),
            _buildItem('images/tt.jpeg', 'Tteokbokki'),
            SizedBox(height: 10.0),
            _buildItem('images/star3.jpeg', 'Samosa'),
            SizedBox(height: 10.0),
            _buildItem('images/star4.jpg', 'Thai Spring Rolls'),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String imagePath, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.lime.shade300,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              imagePath,
              height: 80.0,
              width: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            flex: 3,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
