import 'package:flutter/material.dart';
import 'package:games/Screens/SignUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    labelText: "E-mail"
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Vous n'avez pas de compte"),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      child: Text("S'inscrire", style: TextStyle(color: Colors.orangeAccent),),
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
