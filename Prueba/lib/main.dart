import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() => runApp(myCard());

class myCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hola Mundo'),
        ),
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50.0,
            backgroundImage: AssetImage('images/HomeroBien.jpg'),
          ),
          Text(
            'Jorge Perez',
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),

          Text('Mobile programmer'),

          SizedBox(
            height: 30.0,
            width: 200.0,
            child: Divider(
              height: 100.0,
              color: Colors.white,
              thickness: 2,
            ),
          ),

          CardWidget(
            icono: Icons.email,
            texto: '1104326@est.intec.edu.do',
          ),

          CardWidget(
            icono: Icons.phone,
            texto: '826-261-7506',
          ),
        ],
      ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  CardWidget({
    super.key, required this.icono, required this.texto,
  });

  final IconData icono;
  final String texto;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Icon(
            icono,
            color: Colors.teal.shade900,
          ),
          title: Text(texto,
            style: GoogleFonts.roboto(
                color: Colors.teal.shade700
            ),),

        ),
      ),
    );
  }
}
