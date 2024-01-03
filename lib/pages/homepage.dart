import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/util/category.dart';
import 'package:music_app/pages/solocategoriespage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void categoryTrigger(String category) {
    // Navigate to SoloCategoriesPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SoloCategoriesPage(category)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.5,
        shadowColor: Colors.white,
        centerTitle: true,
        title: const Text("Music Practice App"),
      ),
      body: Center(
          child: SingleChildScrollView(         // if the content changes, use this instead of listview
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
              child: Category(
                  "Category 1", Colors.deepOrangeAccent, categoryTrigger),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
              child: Category("Category 2", Colors.green, categoryTrigger),
            ),
          ],
        ),
      )),
    );
  }
}
