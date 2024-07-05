import 'package:flutter/material.dart';
import 'package:myapp/files/in.dart';
import 'package:myapp/files/kor.dart';
import 'package:myapp/files/me.dart';
import 'package:myapp/files/amer.dart';
import 'package:myapp/files/viet.dart';
import 'package:myapp/files/thai.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({Key? key}) : super(key: key);

  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  // Sample data for trips
  List<Map<String, dynamic>> trips = [
     {
      'title': 'Indian',
      'description': 'Indian cuisine has a diverse food chain which includes biryani, curry dishes, and a variety of bread like naan and roti.',
      'image': 'images/indian.jfif',

    },
    {
      'title': 'Mexican',
      'description': 'Mexican cuisine is known for its rich flavors, spices, and diverse dishes such as tacos, enchiladas, and guacamole.',
      'image': 'images/mexcican.jfif',
    },
    {
      'title': 'American',
      'description': 'American cuisine encompasses a wide range of dishes from different regions, including burgers, hot dogs, barbecue, and apple pie.',
      'image': 'images/american.jfif',
    },
    {
      'title': 'Korean',
      'description': 'Korean cuisine features fermented foods, spicy flavors, and dishes such as kimchi, bibimbap, and Korean BBQ.',
      'image': 'images/kor.jfif',
    },
    {
      'title': 'Vietnamese',
      'description': 'Vietnamese cuisine is light, fresh, and balanced with dishes like pho, banh mi, spring rolls, and noodle salads.',
      'image': 'images/viet.jfif',
    },
    {
      'title': 'Thailand',
      'description': 'Thai cuisine is famous for its spicy and aromatic flavors with dishes such as pad Thai, green curry, tom yum soup, and mango sticky rice.',
      'image': 'images/thailand.jpeg',
    },
    // Add more trips with images and descriptions as needed
  ];

  void Ind(String title, String description, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => IndianScreen(
          title: title,
          description: description,
          image: image,
        ),
      ),
    );
  }

  void Mex(String title, String description, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MexicanScreen(
          title: title,
          description: description,
          image: image,
        ),
      ),
    );
  }
    void Amer(String title, String description, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AmericanScreen(
          title: title,
          description: description,
          image: image,
        ),
      ),
    );
  }
  void Kor(String title, String description, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => KoreanScreen(
          title: title,
          description: description,
          image: image,
        ),
      ),
    );
  }
  void Viet(String title, String description, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VietnamScreen(
          title: title,
          description: description,
          image: image,
        ),
      ),
    );
  }
  void Thai(String title, String description, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ThailandScreen(
          title: title,
          description: description,
          image: image,
        ),
      ),
    );
  }
  void _handleTap(String title) {
    switch (title) {
      case 'Indian':
        Ind(
          trips[0]['title'],
          trips[0]['description'],
          trips[0]['image'],
        );
        break;
      case 'Mexican':
        Mex(
          trips[1]['title'],
          trips[1]['description'],
          trips[1]['image'],
        );
        break;
      case 'American':
        Amer(
          trips[2]['title'],
          trips[2]['description'],
          trips[2]['image'],
        );
        break;
        case 'Korean':
        Kor(
          trips[3]['title'],
          trips[3]['description'],
          trips[3]['image'],
        );
        break;
        case 'Vietnamese':
        Viet(
          trips[4]['title'],
          trips[4]['description'],
          trips[4]['image'],
        );
        case 'Thailand':
        Thai(
          trips[5]['title'],
          trips[5]['description'],
          trips[5]['image'],
        );
        break;
      // Add cases for other cuisines
      default:
        // Handle cases where navigation is not defined
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuisines'),
      ),
      body: ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _handleTap(trips[index]['title']);
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1.0),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(trips[index]['image']),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Adjust the opacity as needed
                    BlendMode.darken, // You can use different blend modes here
                  ),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      trips[index]['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Tap to explore',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
