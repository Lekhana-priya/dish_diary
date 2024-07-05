import 'package:flutter/material.dart';

class VietnamScreen extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const VietnamScreen({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text(title),
      ),
      body: Container(
        color: Colors.black, // Black background color
        child: ListView(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), // Adjust opacity as needed
                        BlendMode.darken, // Darken the image
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  top: 16,
                  left: 16,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildContentContainer(
              'images/pho.jpeg',
              'Pho',
              '',
            ),
            SizedBox(height: 20),
            _buildContentContainer(
              'images/ban.jpeg',
              'Banh Xeo',
              '',
            ),
            SizedBox(height: 20),
            _buildContentContainer(
              'images/com.jpg',
              'Com tam',
              '',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContentContainer(String imagePath, String title, String description) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
