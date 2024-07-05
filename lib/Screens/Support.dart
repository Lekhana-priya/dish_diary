import 'package:flutter/material.dart';
import 'package:myapp/files/bir.dart';
import 'package:myapp/files/star.dart';
import 'package:myapp/files/dess.dart';
import 'package:myapp/files/vk.dart';
import 'package:myapp/files/sk.dart';
import 'package:myapp/files/rb.dart';
import 'package:myapp/files/kk.dart';
import 'package:myapp/files/bc.dart';
import 'package:myapp/files/tt.dart';
import 'package:myapp/files/cb.dart';
import 'package:myapp/files/wf.dart';
import 'package:myapp/files/pho.dart';
import 'package:myapp/files/mac.dart';

class Supportscreen extends StatelessWidget {
  final List<Map<String, dynamic>> containerData = [
    {
      'text': "Week's Best",
      'image': 'images/biri.jpeg',
      'screen': BiriyaniScreen(),
    },
    {
      'text': 'Starters',
      'image': 'images/star.jpeg',
      'screen': StartersScreen(),
    },
    {
      'text': 'Main Course',
      'image': 'images/bir.jfif',
      'screen': MainCourseScreen(),
    },
    {
      'text': 'Desserts',
      'image': 'images/brow.jfif',
      'screen': DessertScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Week's Best",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => containerData[0]['screen'],
                  ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    width: 450.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(containerData[0]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        "Hyderabadi biriyani",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: containerData.sublist(1).map((data) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => data['screen'],
                      ),
                    );
                  },
                  child: Container(
                    width: 110.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        data['text'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Divider(
              thickness: 2.0,
              color: const Color.fromARGB(255, 206, 205, 205),
            ),
            const SizedBox(height: 8),
            Text(
              "Top Chefs",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildClickableContainer(context, 'images/vikas.jpeg', 'Vikas Khanna', VKScreen()),
                _buildClickableContainer(context, 'images/sanjeev.jpeg', 'Sanjeev Kapoor', SKScreen()),
                _buildClickableContainer(context, 'images/ranveer.webp', 'Ranveer Brar', RBScreen()),
                _buildClickableContainer(context, 'images/kunal.jpeg', 'Kunal Kapur', KKScreen()),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Popular Picks',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                _buildChefContainer(context, 'images/but.jpeg', 'Butter chicken', BCScreen()),
                _buildChefContainer(context, 'images/tt.jpeg', 'Tteokbokki', TTScreen()),
                _buildChefContainer(context, 'images/bur.jpeg', 'Cheese Burger', CBScreen()),
                _buildChefContainer(context, 'images/d2.jpeg', 'Waffle', WFScreen()),
                _buildChefContainer(context, 'images/pho.jpeg', 'Pho', PHOScreen()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClickableContainer(BuildContext context, String imagePath, String text, Widget screen) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildChefContainer(BuildContext context, String imagePath, String text, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.lime.shade300,
          border: Border.all(color: Colors.deepOrange),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Text(
              text,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
