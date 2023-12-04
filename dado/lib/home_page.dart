import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //funcion para seleccionar las imagenes de manera aleatoria
  var rnd = Random();

  int dado = 1;

  void lanzarDados(){

    dado = rnd.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 177, 12, 156),
            Color.fromARGB(255, 76, 5, 102)
          ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/dice-$dado.png', width: 200.0,),
              SizedBox(
                height: 30.0,
              ),
              OutlinedButton(
                  onPressed: (){
                    setState(() {
                      lanzarDados();
                    });
                  },
                  child: Text('Roll Dice'),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
