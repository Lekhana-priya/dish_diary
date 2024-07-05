import 'package:flutter/material.dart';
import 'package:myapp/Screens/Support.dart';
import 'package:myapp/Screens/Trips.dart';
import 'package:myapp/Screens/wallet.dart'; 
import 'package:myapp/Screens/hi.dart';

import 'package:myapp/Widgets/appBar.dart'; 
import 'package:myapp/Widgets/Bottomnavbar.dart'; 
import 'package:myapp/Widgets/BottomTab.dart'; 
import 'package:myapp/Widgets/profileDashboard.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<Widget> _wigetsOptions = <Widget>[
    Supportscreen(),
    TripsScreen(),
    WalletScreen(),
    hi()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showLoginBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LoginBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyappBar(
          title: 'Dish Diary',
          scaffoldKey: _scaffoldKey,
          onNotificationTap: () {},
          onLoginTap: () => _showLoginBottomSheet(context),
        ),
      ),
      drawer: SideBar(),
      body: _wigetsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

