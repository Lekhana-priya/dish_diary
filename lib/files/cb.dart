import 'package:flutter/material.dart';

class CBScreen extends StatelessWidget {
  const CBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Cheese Burger'),
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
                  image: AssetImage('images/bur.jpeg'), // Replace with your Cheese Burger image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Darken the image a little
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Cheese Burger',
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
              'A cheeseburger is a sandwich consisting of one or more cooked beef patties placed inside a sliced bun. It is often topped with various ingredients such as cheese, lettuce, tomato, onion, pickles, bacon, or condiments like ketchup, mustard, or mayonnaise. Cheeseburgers are a popular fast-food item enjoyed globally for their savory and satisfying flavors.',
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
              '- 500g ground beef (80% lean)\n'
              '- Salt and pepper to taste\n'
              '- 4 hamburger buns\n'
              '- 4 slices cheddar cheese\n'
              '- Lettuce leaves\n'
              '- Sliced tomatoes\n'
              '- Sliced onions\n'
              '- Pickles\n'
              '- Ketchup, mustard, mayonnaise (optional)\n'
              '- Butter or oil for grilling\n\n'
              'Steps:\n\n'
              '1. Divide ground beef into 4 equal portions. Shape each portion into a patty, slightly larger than the hamburger buns, to allow for shrinking during cooking.\n'
              '2. Season both sides of each patty with salt and pepper.\n'
              '3. Heat a grill pan or skillet over medium-high heat. Add butter or oil.\n'
              '4. Place patties on the hot grill or skillet. Cook for about 4-5 minutes per side, or until desired doneness (medium to well-done).\n'
              '5. During the last minute of cooking, place a slice of cheddar cheese on each patty to melt.\n'
              '6. Toast the hamburger buns on the grill or skillet until lightly browned and warmed.\n'
              '7. Assemble the cheeseburgers: Place lettuce leaves on the bottom half of each bun. Top with a cooked patty with melted cheese. Add tomato slices, onion slices, pickles, and condiments of your choice. Cover with the top half of the bun.\n'
              '8. Serve hot and enjoy your delicious Cheese Burger!\n',
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
