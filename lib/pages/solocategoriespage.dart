import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';


class SoloCategoriesPage extends StatefulWidget {
  final String category;
  const SoloCategoriesPage(this.category, {super.key});

  @override
  State<SoloCategoriesPage> createState() => _SoloCategoriesPageState();
}

class _SoloCategoriesPageState extends State<SoloCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: Text(widget.category), backgroundColor: backgroundColor,),
    );
  }
}