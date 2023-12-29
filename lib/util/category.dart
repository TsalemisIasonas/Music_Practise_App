import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';

class Category extends StatelessWidget {
  final String category;
  final Color choiceColor;
  final VoidCallback categorytrigger;

  const Category(this.category, this.choiceColor, this.categorytrigger, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Center(
      child: TextButton(
        onPressed: categorytrigger,
        style: TextButton.styleFrom(
          foregroundColor: choiceColor,
          backgroundColor: maincolor,
          shadowColor: choiceColor,
          minimumSize: Size((3 * screenSize.width) / 4, 3 * screenSize.height / 4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          side: BorderSide(color: choiceColor, width: 2.0),
        ),
        child: Text(
          category,
        ),
      ),
    );
  }
}
