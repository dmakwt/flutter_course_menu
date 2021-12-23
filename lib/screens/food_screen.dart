import 'package:flutter/material.dart';
import 'package:flutter_menu_app2/models/food.dart';

class FoodScreen extends StatelessWidget {
  Food myFood;

  FoodScreen({required this.myFood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.orange,
      ),
      body: Image.network(myFood.imgURL),
    );
  }
}
