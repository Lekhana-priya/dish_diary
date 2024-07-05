import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const DetailScreen({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.darken,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CuisineItemWidget(
                      imagePath: 'images/but.jpeg',
                      title: 'Butter Chicken',
                      description: 'Delicious butter chicken with creamy sauce.',
                    ),
                    SizedBox(height: 16.0),
                    CuisineItemWidget(
                      imagePath: 'images/bir.jpeg',
                      title: 'Biryani',
                      description: 'Fragrant rice dish with spices and meat.',
                    ),
                    SizedBox(height: 16.0),
                    CuisineItemWidget(
                      imagePath: 'images/gulab.jpeg',
                      title: 'Gulab Jamun',
                      description: 'Sweet syrupy dessert with deep-fried dough.',
                    ),
                    SizedBox(height: 16.0),
                    CuisineItemWidget(
                      imagePath: 'images/samosa.jpeg',
                      title: 'Samosa',
                      description: 'Crunchy pastry filled with spiced potatoes.',
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CuisineItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CuisineItemWidget({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.lime.shade300,
        border: Border.all(color: Colors.deepOrange),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  description,
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
