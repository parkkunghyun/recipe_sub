
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _recipeMenu(Icons.food_bank, "Food bank"),
            const SizedBox(width: 10,),
            _recipeMenu(Icons.local_pizza, "Pizza"),
            const SizedBox(width: 10,),
            _recipeMenu(Icons.emoji_food_beverage, "Coffee"),
            const SizedBox(width: 10,),
            _recipeMenu(Icons.fastfood_sharp, "Buger"),
          ],
        ),
      ),
    );
  }

  Container _recipeMenu(IconData mIcon, String val) {
    return Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(mIcon),
                const SizedBox(height: 10),
                Text(val),
              ],
            ),
          );
  }
}