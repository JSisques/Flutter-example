import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instant_message/main.dart';


class SplashScreen extends StatefulWidget{

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  Timer timer;
  @override
  void initState(){
    super.initState();
    timer = Timer(Duration(seconds: 5), showLogin);
  }

  @override
  void dispose(){
    timer.cancel();
    super.dispose();
  }

  void showLogin(){
    if (mounted){
      //Navigator.of(context).pushReplacement(LoginScreen.route());
    }
  }

  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(128),
            child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    ),
),
          Text("Hello"),
          
        ],
      ),
    );
  }
}
