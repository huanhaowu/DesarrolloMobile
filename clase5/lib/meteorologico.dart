import 'package:flutter/material.dart';

class meteo_section extends StatelessWidget {
  const meteo_section({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Row - seccion meteorologica
        Row(
          children: [
            Column(
              children: [
                Icon(Icons.sunny),
              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("texto 1"),
                  ],
                ),
                Row(
                  children: [
                    Text("texto 1"),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
