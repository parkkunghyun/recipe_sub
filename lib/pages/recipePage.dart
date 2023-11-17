
import 'package:counter_app/components/recipeCard.dart';
import 'package:counter_app/components/recipeMenu.dart';
import 'package:counter_app/components/recipeTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _recipeAppBar(),
      body: ListView(
        children: [
          RecipeTitle(),
          RecipeMenu(),
          //RecipeCard(),
          //RecipeCard(),
          //RecipeCard(),
        ],
      ),
    );
  }

  AppBar _recipeAppBar() {
    return AppBar(
      title: const Text(
        "레시피 앱 바",
        style: TextStyle(color: Colors.blue),
      ),
      centerTitle: true,
      actions: const [
        Icon(Icons.search),
        SizedBox(width: 15,),
        Icon(CupertinoIcons.heart),
        SizedBox(width: 15,),
      ],
      elevation: 2.0,
    );
  }
}