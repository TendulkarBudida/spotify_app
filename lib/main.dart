import 'package:flutter/material.dart';

import 'package:spotify_app/Home/home.dart';
import 'package:spotify_app/Search/search.dart';
import 'package:spotify_app/Your Library/your_library.dart';

import 'dart:ui';

var pixelRatio = window.devicePixelRatio;

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

//Padding in physical pixels
var padding = window.padding;

//Safe area paddings in logical pixels
var paddingLeft = window.padding.left / window.devicePixelRatio;
var paddingRight = window.padding.right / window.devicePixelRatio;
var paddingTop = window.padding.top / window.devicePixelRatio;
var paddingBottom = window.padding.bottom / window.devicePixelRatio;

//Safe area in logical pixels
var deviceWidth = logicalWidth - paddingLeft - paddingRight;
var deviceHeight = logicalHeight - paddingTop - paddingBottom;

var safeWidth = deviceWidth;
var safeHeight = deviceHeight;

double safePadding = 20.0;
Color paceScaffoldBgColor = Colors.black87;

String url =
    'https://static.vecteezy.com/system/resources/previews/013/020/154/non_2x/graphic-of-random-abstract-square-wood-block-seamless-tile-perfect-for-background-vector.jpg';
double fontSizeHome = safeWidth * 0.042;
double fontSizeHomeMain = safeWidth * 0.062;
double fontSizeHomeSubs = safeWidth * 0.037;
double fontSizeSearch = safeWidth * 0.05;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Spotify Demo',
      //theme: ThemeData(
        //primarySwatch: Colors.blue,
      //),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<Widget> navigationBarItems = const [
    ACHome(),
    ACSearch(),
    ACYourLibrary(),
  ];

  @override
  Widget build(BuildContext context) {
    double height = safeHeight * 0.08;

    return Scaffold(
      body: Stack(
        children: [
          navigationBarItems[currentIndex],
          acAlign(height, currentIndex, setState),
        ],
      ),
    );
  }
}

Align acAlign(double height, int currentIndex, Function setState) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Column(
      verticalDirection: VerticalDirection.up,
      children: [
        acBottomNavigationBar(height, currentIndex, setState),
        acPlayer(height),
      ],
    )
  );
}

Widget acBottomNavigationBar(double height, int currentIndex, Function setState) {
  return Container(
    height: height,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black26,
          Colors.black54,
          Colors.black54,
          Colors.black87,
          Colors.black87,
          Colors.black,
          Colors.black,
        ],
      ),
    ),
    child: BottomNavigationBar(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 13,
      selectedFontSize: 13,
      items: [
        acBottomNavigationBarItem('Home', Icons.home, Icons.home_outlined),
        acBottomNavigationBarItem('Search', Icons.saved_search, Icons.search),
        acBottomNavigationBarItem('Your Library', Icons.my_library_music_rounded, Icons.my_library_music_outlined),
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
    ),
  );
}

BottomNavigationBarItem acBottomNavigationBarItem(String label, IconData activeIcon, IconData icon) {
  double iconHeight = (deviceHeight * 0.04);

  return BottomNavigationBarItem(
    label: label,
    activeIcon: Icon(
      activeIcon,
      size: iconHeight,
    ),
    icon: Icon(
      icon,
      size: iconHeight,
    ),
  );
}

Widget acPlayer(double height) {
  double width = safeWidth - (safePadding);

  return Padding(
    padding: EdgeInsets.only(left: safePadding * 0.5, right: safePadding * 0.5),
    child: Container(
      width: width,
      height: height,
      decoration: boxDecorationCurvedEdges(Colors.blueGrey.shade800),
      child: Row(
        children: [

        ],
      ),
    ),
  );
}