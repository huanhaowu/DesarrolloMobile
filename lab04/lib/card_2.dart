import 'package:flutter/material.dart';
import 'package:lab04/social_food_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  final String authorName = 'Mike Katz';
  final String authorJob = 'Smoothie Connoisseur';
  final String food = 'Smoothies ';
  final String description = 'Recipe';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        constraints: BoxConstraints.expand(
            width: 350,
            height: 450
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('mag5.png'),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0),)
        ),
        child: Column(
          children: [
            Stack(

              ),
          ],
        )
      ),
    );
  }
}

