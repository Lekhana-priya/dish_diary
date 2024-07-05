import 'package:flutter/material.dart';

class WFScreen extends StatelessWidget {
  const WFScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text('Waffles'),
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
                  image: AssetImage('images/d2.jpeg'), // Replace with your Waffles image path
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Darken the image a little
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Waffles',
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
              'Waffles are a type of baked batter cake that originated in Belgium. They are typically made from leavened batter or dough cooked between two patterned plates, creating a characteristic grid-like texture. Waffles can be served plain or with toppings such as powdered sugar, syrup, fruits, whipped cream, or ice cream. They are popular for breakfast or as a dessert.',
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
              '- 2 cups all-purpose flour\n'
              '- 2 tablespoons granulated sugar\n'
              '- 1 tablespoon baking powder\n'
              '- 1/2 teaspoon salt\n'
              '- 1 3/4 cups milk\n'
              '- 1/2 cup unsalted butter, melted\n'
              '- 2 large eggs\n'
              '- 1 teaspoon vanilla extract\n\n'
              'Steps:\n\n'
              '1. Preheat your waffle iron according to manufacturer\'s instructions.\n'
              '2. In a large bowl, whisk together flour, sugar, baking powder, and salt.\n'
              '3. In another bowl, whisk together milk, melted butter, eggs, and vanilla extract.\n'
              '4. Pour the wet ingredients into the dry ingredients and stir until just combined. Do not overmix; batter may be slightly lumpy.\n'
              '5. Lightly grease the waffle iron with non-stick cooking spray or brush with melted butter.\n'
              '6. Pour enough batter onto the preheated waffle iron to cover the grid surface. Close the lid and cook until waffles are golden brown and crisp.\n'
              '7. Carefully remove waffles from the iron and serve immediately with your favorite toppings.\n',
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
