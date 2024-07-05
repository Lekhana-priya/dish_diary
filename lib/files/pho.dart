import 'package:flutter/material.dart';

class PHOScreen extends StatelessWidget {
  const PHOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Pho'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage('images/pho.jpeg'), // Replace with your Pho image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Darken the image a little
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Pho',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Description:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Pho is a traditional Vietnamese noodle soup consisting of broth, rice noodles, herbs, and meat, usually beef or chicken. The clear broth is typically made by simmering beef bones, oxtails, and spices for several hours. Pho is served with various fresh herbs, bean sprouts, lime wedges, and sauces on the side.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Recipe:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ingredients:\n'
              '- 1 kg beef bones or oxtails\n'
              '- 2 onions, peeled and halved\n'
              '- 5-6 slices ginger\n'
              '- 4-5 star anise\n'
              '- 2-3 cinnamon sticks\n'
              '- 5-6 cloves\n'
              '- 1 black cardamom pod (optional)\n'
              '- 2-3 tablespoons fish sauce\n'
              '- 1-2 tablespoons sugar\n'
              '- Salt to taste\n\n'
              '- 300g dried rice noodles (banh pho)\n'
              '- 400g beef brisket or sirloin, thinly sliced\n'
              '- Fresh herbs: Thai basil, cilantro, mint\n'
              '- Bean sprouts, lime wedges, sliced chili peppers (for serving)\n\n'
              'Steps:\n\n'
              '1. Char onions and ginger over an open flame or under a broiler until slightly blackened. Rinse briefly and set aside.\n'
              '2. In a large pot, add beef bones, charred onions, ginger, star anise, cinnamon sticks, cloves, black cardamom (if using), fish sauce, sugar, and salt. Cover with water (about 4-5 liters) and bring to a boil.\n'
              '3. Skim off any scum that rises to the surface. Reduce heat to low and simmer, covered, for at least 6 hours (the longer, the better) to develop flavors.\n'
              '4. Cook rice noodles according to package instructions. Rinse under cold water and set aside.\n'
              '5. When ready to serve, strain the broth and discard solids. Adjust seasoning if needed.\n'
              '6. Divide cooked noodles among bowls. Top with sliced raw beef and any desired cooked beef (from the broth). Ladle hot broth over the noodles and beef. Serve with fresh herbs, bean sprouts, lime wedges, and sliced chili peppers on the side.\n\n'
              'Enjoy your comforting bowl of Pho!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
