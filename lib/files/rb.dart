import 'package:flutter/material.dart';

class RBScreen extends StatelessWidget {
  const RBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Ranveer Brar'),
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
                      image: AssetImage('images/ranveer.webp'), // Replace with your image path
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
                    "Ranveer Brar",
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
                "Ranveer Brar is a renowned Indian chef known for his innovative approach to traditional Indian dishes. Here are some of his famous dishes:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            _buildDishButton(context, "Galouti Kebab", "A famous Lucknowi dish made with finely minced meat and aromatic spices."),
            _buildDishButton(context, "Fish Amritsari", "Fish fillets marinated in a spicy batter and deep-fried until crispy."),
            _buildDishButton(context, "Dum Aloo Kashmiri", "Baby potatoes cooked in a spicy yogurt-based gravy with Kashmiri spices."),
            _buildDishButton(context, "Malai Murg", "Chicken cooked in a creamy sauce made with cashew nuts, cream, and spices."),
          ],
        ),
      ),
    );
  }

  Widget _buildDishButton(BuildContext context, String dishName, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dishName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Implement action when button is pressed
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            ),
            child: Text(
              'Learn More',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
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
      ),
    );
  }
}
