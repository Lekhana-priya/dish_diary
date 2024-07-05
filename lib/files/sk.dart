import 'package:flutter/material.dart';

class SKScreen extends StatelessWidget {
  const SKScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Sanjeev Kapoor'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/sanjeev.jpeg'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5), // Dark overlay
                  ),
                ),
                Positioned(
                  top: 120.0,
                  child: Text(
                    "Sanjeev Kapoor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 160.0,
                  child: Text(
                    "Celebrity Chef",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Sanjeev Kapoor is an Indian chef, author, and television personality known for his contributions to Indian cuisine. Here are some of his famous dishes:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            _buildDishItem(
              context,
              'Shahi Paneer',
              'Paneer cooked in a creamy gravy of tomatoes, cream, and aromatic spices.',
            ),
            _buildDishItem(
              context,
              'Palak Paneer',
              'Paneer cooked in a creamy spinach gravy flavored with garlic and spices.',
            ),
            _buildDishItem(
              context,
              'Dahi Ke Kebab',
              'Soft and creamy kebabs made from hung curd, nuts, and herbs, shallow-fried until crisp.',
            ),
           
           
            _buildDishItem(
              context,
              'Vegetable Biryani',
              'Fragrant rice dish cooked with assorted vegetables, herbs, and spices.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDishItem(BuildContext context, String dishName, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
        Text(
          dishName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          description,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            // Navigate to a detailed page for this dish if needed
          },
          child: Text(
            'View Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange, // Button color
          ),
        ),
                Divider(
          color: Colors.grey,
          thickness: 1.0,
          indent: 16.0,
          endIndent: 16.0,
        ),
      ],
    );
  }
}
