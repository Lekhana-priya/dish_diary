import 'package:flutter/material.dart';

class BCScreen extends StatelessWidget {
  const BCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Butter Chicken'),
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
                  image: AssetImage('images/but.jpeg'), // Replace with your Butter Chicken image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Darken the image a little
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Butter Chicken',
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
              'Butter Chicken, also known as Murgh Makhani, is a popular dish from the Indian subcontinent. It is made with marinated chicken cooked in a mildly spiced tomato-based curry sauce. The dish is known for its rich and creamy texture, achieved by using butter, cream, and yogurt in the preparation.',
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
              '- 500 grams chicken (boneless, cut into cubes)\n'
              '- 1 cup plain yogurt (curd)\n'
              '- 2 tablespoons ginger-garlic paste\n'
              '- 1 teaspoon red chili powder\n'
              '- 1/2 teaspoon turmeric powder\n'
              '- Salt to taste\n\n'
              '- 2 tablespoons butter\n'
              '- 2 tablespoons oil\n'
              '- 1 bay leaf\n'
              '- 1 cinnamon stick\n'
              '- 2-3 green cardamom pods\n'
              '- 4-5 cloves\n'
              '- 1 large onion, finely chopped\n'
              '- 2 tomatoes, pureed\n'
              '- 1/4 cup cashew nuts, soaked and ground to a paste\n'
              '- 1/2 cup cream\n'
              '- 1 tablespoon honey (optional, for sweetness)\n'
              '- Fresh coriander leaves, chopped (for garnish)\n\n'
              'Steps:\n\n'
              'Marinating the Chicken:\n\n'
              '1. In a bowl, mix yogurt, ginger-garlic paste, red chili powder, turmeric powder, and salt. Add chicken pieces to this marinade. Coat well, cover, and refrigerate for at least 1 hour (preferably longer).\n\n'
              'Cooking Butter Chicken:\n\n'
              '1. Heat butter and oil in a pan. Add bay leaf, cinnamon stick, cardamom pods, and cloves. Sauté for a minute until fragrant.\n'
              '2. Add finely chopped onions and sauté until golden brown.\n'
              '3. Add tomato puree and cook until the raw smell of tomatoes disappears and oil starts to separate from the masala.\n'
              '4. Add the marinated chicken along with the marinade. Cook on medium heat until the chicken is tender and fully cooked.\n'
              '5. Stir in cashew nut paste and cream. Adjust consistency with water if needed.\n'
              '6. Add honey for a touch of sweetness (optional).\n'
              '7. Simmer for a few minutes until the gravy thickens.\n\n'
              'Serving:\n\n'
              'Serve hot Butter Chicken garnished with fresh coriander leaves, with naan, roti, or steamed rice.',
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
