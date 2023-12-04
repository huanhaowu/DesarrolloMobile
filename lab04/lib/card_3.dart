import 'package:flutter/material.dart';
import 'package:lab04/social_food_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  final String title = 'Recipe trends';

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
                image: AssetImage('mag2.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0),)
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.book, size: 40),
                SizedBox(height: 10),
                Text(title, style: SocialFoodTheme.darkTextTheme.displayLarge),
                SizedBox(height: 60),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Chip(
                        label: Text('Healthy'),
                        backgroundColor: Colors.black.withOpacity(0.1),
                        onDeleted: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Chip(
                        label: Text('Vegan'),
                        backgroundColor: Colors.black.withOpacity(0.1),
                        onDeleted: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Chip(
                        label: Text('Carrots'),
                        backgroundColor: Colors.black.withOpacity(0.1),
                        onDeleted: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Chip(
                        label: Text('Carrots'),
                        backgroundColor: Colors.black.withOpacity(0.1),
                        onDeleted: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

