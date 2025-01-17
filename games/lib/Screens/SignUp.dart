import 'package:flutter/material.dart';
import 'package:games/Screens/LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      prefixIcon: Icon(Icons.face),
                      labelText: "Nom"
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.contacts),
                      labelText: "Prenom"
                  ),
                ),
                SizedBox(height: 15,),
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
                    Text("Vous avez deja un compte"),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text("Se connecter", style: TextStyle(color: Colors.orangeAccent),),
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
