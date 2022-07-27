import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> restuarants = [
    'McDonald\'s',
    'Burger King',
    'Pizza Hut',
    'Dumpling Kitchen',
    'Roscoe Chicken & Waffles',
    'Oudh 1950'
  ];

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Where do you want to eat?"),
            if (currentIndex != null)
              Text(restuarants[currentIndex!], style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 25.0,
              )
              ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            FlatButton(
              onPressed: () {
                updateIndex();
              },
              child: Text("Pick Something"),
              color: Colors.purple.shade300,
              textColor: Colors.white,
            ),
          ],
        )),
      ),
    );
  }

    void updateIndex()
    {
      final random = Random();
      final index = random.nextInt(restuarants.length);
      setState(()
      {
        currentIndex = index;
      });
    }
  }

