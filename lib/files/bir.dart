import 'package:flutter/material.dart';

class BiriyaniScreen extends StatelessWidget {
  const BiriyaniScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Hyderabadi Biryani'),
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
                  image: AssetImage('images/biri.jpeg'), // Replace with your biriyani image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Adjust the opacity as needed
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Hyderabadi Biryani',
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
              'Biryani is a flavorful rice dish that originated in the Indian subcontinent. It is made with basmati rice, meat (chicken, mutton, or beef), fragrant spices, and herbs. The dish is cooked in layers with marinated meat and partially cooked rice, resulting in a deliciously aromatic and richly spiced meal.',
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
              '- 1 kg chicken, cut into pieces\n'
              '- 1 cup yogurt (curd)\n'
              '- 1 tablespoon ginger-garlic paste\n'
              '- 1 teaspoon red chili powder\n'
              '- 1 teaspoon turmeric powder\n'
              '- 1 teaspoon garam masala powder\n'
              '- Salt to taste\n\n'
              '- 2 cups basmati rice, aged\n'
              '- Water as required for cooking rice\n'
              '- Salt to taste\n'
              '- 1 bay leaf\n'
              '- 2-3 green cardamom pods\n'
              '- 2-3 cloves\n'
              '- 1-inch cinnamon stick\n\n'
              '- 2-3 tablespoons oil\n'
              '- 2 onions, sliced\n'
              '- 2 tomatoes, chopped\n'
              '- 2-3 green chilies, slit\n'
              '- Fresh coriander leaves, chopped\n'
              '- Fresh mint leaves, chopped\n'
              '- Fried onions (for garnish)\n'
              '- Saffron strands soaked in milk (for garnish)\n'
              '- Ghee (clarified butter) for flavor (optional)\n\n'
              'Steps:\n\n'
              'Marinating the Chicken:\n\n'
              '1. Prepare the chicken by cleaning and washing the chicken pieces thoroughly. Drain excess water.\n'
              '2. In a bowl, mix yogurt, ginger-garlic paste, red chili powder, turmeric powder, garam masala powder, and salt. Add chicken pieces to this mixture. Coat the chicken pieces well with the marinade. Cover and refrigerate for at least 1 hour (preferably longer for better flavors).\n\n'
              'Cooking Rice:\n\n'
              '1. Rinse basmati rice thoroughly under running water until the water runs clear. Soak rice in water for 30 minutes.\n'
              '2. In a large pot, bring water to a boil. Add salt, bay leaf, green cardamom pods, cloves, and cinnamon stick. Add drained rice. Cook rice until it is 70-80% done. Drain the water and keep aside.\n\n'
              'Cooking Biryani Masala:\n\n'
              '1. Heat oil in a heavy-bottomed pan or pot.\n'
              '2. Add sliced onions and sauté until they turn golden brown.\n'
              '3. Add chopped tomatoes and slit green chilies. Cook until tomatoes are softened and oil starts to separate.\n\n'
              'Layering the Biryani:\n\n'
              '1. Spread half of the marinated chicken evenly over the masala.\n'
              '2. Spread half of the cooked rice over the chicken layer.\n'
              '3. Sprinkle chopped fresh coriander leaves, mint leaves, fried onions, and a few saffron strands soaked in milk.\n'
              '4. Repeat the layers with the remaining chicken and rice.\n'
              '5. Optionally, dot the top layer with ghee for added flavor.\n\n'
              'Dum Cooking (Slow Cooking):\n\n'
              '1. Cover the pot with a tight-fitting lid. You can also seal the edges with dough or aluminum foil to trap steam.\n'
              '2. Cook biryani on low heat (dum) for about 20-25 minutes. This allows the flavors to meld together and the chicken to cook thoroughly.\n'
              '3. Turn off the heat and let the biryani rest for 10-15 minutes before opening the lid.\n\n'
              'Serve hot Hyderabadi Biryani with raita (yogurt dip), salad, and pickle.',
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
