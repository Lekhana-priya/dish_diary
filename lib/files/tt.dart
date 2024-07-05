import 'package:flutter/material.dart';

class TTScreen extends StatelessWidget {
  const TTScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Tteokbokki'),
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
                  image: AssetImage('images/tt.jpeg'), // Replace with your Tteokbokki image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Darken the image a little
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Tteokbokki',
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
              'Tteokbokki is a popular Korean street food made with chewy rice cakes (tteok) cooked in a spicy gochujang (red chili paste) sauce. It is often mixed with fish cakes, boiled eggs, and scallions. Tteokbokki is known for its bold flavors and comforting taste.',
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
              '- 300g tteok (Korean rice cakes)\n'
              '- 2 cups water\n'
              '- 150g fish cakes, sliced (optional)\n'
              '- 2 boiled eggs, halved (optional)\n'
              '- 2-3 stalks scallions, chopped\n'
              '- Sesame seeds (for garnish)\n\n'
              'For Sauce:\n'
              '- 3 tablespoons gochujang (Korean red chili paste)\n'
              '- 1 tablespoon soy sauce\n'
              '- 1 tablespoon sugar\n'
              '- 1 teaspoon gochugaru (Korean chili powder, optional for extra heat)\n'
              '- 1 tablespoon vegetable oil\n'
              '- 2 cups vegetable or chicken broth\n\n'
              'Steps:\n\n'
              '1. In a large pan or pot, combine water, gochujang, soy sauce, sugar, gochugaru, and vegetable oil. Bring to a boil over medium heat.\n'
              '2. Add the rice cakes (tteok) and fish cakes (if using). Cook for about 5-7 minutes until the rice cakes are tender and the sauce has thickened, stirring occasionally.\n'
              '3. Add boiled eggs and scallions. Cook for another 2-3 minutes until everything is heated through.\n'
              '4. Adjust seasoning if needed. Sprinkle with sesame seeds before serving.\n\n'
              'Serve hot Tteokbokki as a delicious Korean street food snack or meal!',
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
