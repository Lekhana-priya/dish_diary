import 'package:flutter/material.dart';

class KKScreen extends StatelessWidget {
  const KKScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Kunal Kapur'),
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
                      image: AssetImage('images/kunal.jpeg'), // Replace with your image path
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
                    "Kunal Kapur",
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
                "Kunal Kapur is an Indian celebrity chef known for his innovative take on traditional Indian dishes. He is a restaurateur, television host, and author, and has played a significant role in popularizing Indian cuisine globally.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            _buildDishItem(
              "Murgh Malai Tikka",
              "Chicken marinated in a mixture of cream, cheese, and spices, grilled to perfection.",
              context,
            ),
            _buildDishItem(
              "Dal Makhani",
              "Creamy lentils cooked with butter and spices, a staple in North Indian cuisine.",
              context,
            ),
            _buildDishItem(
              "Butter Chicken",
              "Tender chicken cooked in a rich tomato-based gravy with butter and cream.",
              context,
            ),
            _buildDishItem(
              "Prawn Curry",
              "Prawns cooked in a flavorful coconut milk-based curry with spices and herbs.",
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDishItem(String dishName, String description, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            dishName,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              // Add functionality here for the button action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
            child: Text(
              'Learn More',
              style: TextStyle(
                color: Colors.white,
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
