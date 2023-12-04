import 'package:flutter/material.dart';
import 'package:vacations/reusable_widgets/reusable_widget.dart';
import 'package:vacations/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient( colors: [
              Colors.red,
              Colors.yellow
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Text('Hola Mundo'),
                SizedBox( height: 20),
                reusableTextField('Enter Username', Icons.person_outline, false, _emailTextController),
                SizedBox( height: 20),
                reusableTextField('Enter Password', Icons.lock_outline, true, _passwordTextController),
                SizedBox( height: 20),
                signInSignUpButton(context, true, (){}),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text('  Sign Up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

