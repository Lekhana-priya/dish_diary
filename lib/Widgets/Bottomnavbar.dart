import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavbar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 241, 250, 158), // Background color of the BottomNavigationBar
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.deepOrange, // Color of the selected item
      unselectedItemColor: Colors.black, // Color of the unselected items
      showUnselectedLabels: true, // Whether to show labels for items that are not selected
      selectedFontSize: 14.0, // Font size of the selected item's label
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // Style of the selected item's label

      // Items in the BottomNavigationBar
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: currentIndex == 0 ? Colors.deepOrange : Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_book,
            color: currentIndex == 1 ? Colors.deepOrange : Colors.black,
          ),
          label: 'Recipes',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket,
            color: currentIndex == 2 ? Colors.deepOrange : Colors.black,
          ),
          label: 'Grocery',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.handshake,
            color: currentIndex == 3 ? Colors.deepOrange : Colors.black,
          ),
          label: 'Support',
        ),
      ],
    );
  }
}
