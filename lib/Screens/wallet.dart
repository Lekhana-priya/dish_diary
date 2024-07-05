import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  // List of ingredients for Hyderabadi Biryani
  List<String> ingredients = [
    'Basmati Rice',
    'Chicken',
    'Yogurt',
    'Onions',
    'Tomatoes',
    'Green Chilies',
    'Ginger Garlic Paste',
    'Lemon Juice',
    'Mint Leaves',
    'Cilantro',
    'Garam Masala',
    'Turmeric Powder',
    'Red Chili Powder',
    'Saffron Strands',
    'Cashew Nuts',
    'Ghee',
    'Oil',
    'Salt',
  ];

  // Track which ingredients are checked
  Map<String, bool> ingredientChecklist = {};

  @override
  void initState() {
    super.initState();
    // Initialize checklist to false for all ingredients
    for (String ingredient in ingredients) {
      ingredientChecklist[ingredient] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hyderabadi Biryani Ingredients'),
      ),
      body: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          String ingredient = ingredients[index];
          return CheckboxListTile(
            title: Text(ingredient),
            value: ingredientChecklist[ingredient] ?? false,
            onChanged: (value) {
              setState(() {
                ingredientChecklist[ingredient] = value!;
              });
            },
          );
        },
      ),
    );
  }
}

