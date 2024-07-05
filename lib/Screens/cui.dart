import 'package:flutter/material.dart';

class CuisineItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const CuisineItemWidget({
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.lime.shade300,
        border: Border.all(color: Colors.deepOrange),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
