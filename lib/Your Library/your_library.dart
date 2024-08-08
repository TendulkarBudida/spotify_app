import 'package:flutter/material.dart';
import 'package:spotify_app/main.dart';

class ACYourLibrary extends StatefulWidget {
  const ACYourLibrary({super.key});

  @override
  State<ACYourLibrary> createState() => _ACYourLibraryState();
}

class _ACYourLibraryState extends State<ACYourLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(height: 10, width: 10, color: Colors.pink,),
        actions: [
          Container(height: 200, child: Text('k\njk\nkj'),),
          Container(height: 200, child: Text('k\njk\nkj'),),
        ],
      ),
      backgroundColor: paceScaffoldBgColor,
    );
  }
}
