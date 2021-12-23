import 'package:flutter/material.dart';
import 'package:flutter_menu_app2/models/food.dart';
import 'package:flutter_menu_app2/screens/food_screen.dart';

class HomeScren extends StatefulWidget {
  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  var foods = [
    Food(
      name: 'Pasta',
      imgURL: 'https://i.ibb.co/qkVjqyQ/pngaaa-com-1480399.png',
    ),
    Food(
      name: 'Burger',
      imgURL: 'https://i.ibb.co/FxkkgK6/pngaaa-com-81660.png',
    ),
    Food(
      name: 'Pizza',
      imgURL:
          'https://i.ibb.co/MCqMjSj/png-clipart-california-style-pizza-sicilian-pizza-chrono-pizza-fast-food-pizza-menu-food-recipe-1-re.png',
    ),
    Food(
      name: 'Suchi',
      imgURL:
          'https://i.ibb.co/0D2gP6T/2cd43b-e5828aa119524592ab00126dfa48a944-mv2-removebg-preview.png',
    ),
  ];

  Widget _buildFoodItem({required Food food}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodScreen(
              myFood: food,
            ),
          ),
        );
      },
      child: Card(
        elevation: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              food.imgURL,
              width: 120,
              height: 120,
            ),
            Text(
              food.name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.orange,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return _buildFoodItem(
            food: foods[index],
          );
        },
        itemCount: foods.length,
      ),
    );
  }
}
