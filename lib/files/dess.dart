import 'package:flutter/material.dart';

class DessertScreen extends StatelessWidget {
  const DessertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Desserts'),
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
                      image: AssetImage('images/brow.jfif'), // Replace with your image path
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
                    "Desserts",
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
            _buildItem('images/d1.jpg', 'Choco Cake'),
            SizedBox(height: 10.0),
            _buildItem('images/d2.jpeg', 'Waffles'),
            SizedBox(height: 10.0),
            _buildItem('images/brow.jfif', 'Brownie'),
            SizedBox(height: 10.0),
            _buildItem('images/d4.jpeg', 'Cookies'),
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
