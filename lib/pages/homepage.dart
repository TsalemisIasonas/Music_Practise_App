import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/util/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void categorytrigger() {
    maincolor = Colors.yellow;
    setState(() {
      
    });
    // Add your logic for handling the category press here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.5,
        shadowColor: Colors.red,
        centerTitle: true,
        title: const Text("Music Practice App"),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
              child: Category("Category 1", Colors.deepOrangeAccent, categorytrigger),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
              child: Category("Category 2", Colors.green, categorytrigger),
            ),
          ],
        ),
      ),
    );
  }
}
