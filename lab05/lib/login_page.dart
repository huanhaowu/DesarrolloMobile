import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _imageCover(),
              _textAppName(),
            ],
         )
        ],
      ),
    );
  }

  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 15),
        child: Image.asset(
          'assets/images/delivery.png',
          height: 140,
        ),
      ),
    );
  }

  Widget _textAppName() {
    return Text(
      "Delivery App",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _
}
