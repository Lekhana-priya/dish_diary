import 'package:flutter/material.dart';

class VKScreen extends StatelessWidget {
  const VKScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Vikas Khanna'),
      ),
      body: SingleChildScrollView(
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
                      image: AssetImage('images/vikas.jpeg'), // Replace with your image path
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
                    "Vikas Khanna",
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
                "Vikas Khanna is an Indian chef, cookbook writer, restaurateur, and television personality. He is known for his work in promoting Indian cuisine globally. Khanna has hosted several cooking shows and authored multiple cookbooks.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            _buildDishItem(
              context,
              'Pumpkin Pillows',
              'A signature appetizer at Junoon, Pumpkin Pillows feature tender pieces of pumpkin encased in a crispy pastry shell, served with a variety of sauces that complement the natural sweetness of the pumpkin.',
            ),
            _buildDishItem(
              context,
              'Varqui Crab',
              'This dish features succulent crab meat delicately wrapped in a crispy filo pastry, showcasing Khanna\'s expertise in combining delicate seafood flavors with traditional Indian spices and textures.',
            ),
            _buildDishItem(
              context,
              'Coconut Jaggery Snowballs',
              'A delightful dessert that blends coconut and jaggery (an unrefined sugar popular in Indian cuisine) into snowball-shaped treats, providing a sweet and satisfying end to a meal.',
            ),
            _buildDishItem(
              context,
              'Potato Sage Gnocchi',
              'Although not traditional Indian cuisine, Vikas Khanna has experimented with Italian influences, such as these potato sage gnocchi, showcasing his versatility and creativity as a chef.',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            dishName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ElevatedButton(
            onPressed: () {
              // Add functionality for button press here
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.deepOrange, // Text color
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'View Details',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
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
