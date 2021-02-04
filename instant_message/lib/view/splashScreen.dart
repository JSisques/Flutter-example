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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hello"),
              Text("Hello"),
              Text("Hello"),
            ],
          )
        ],
      ),
    );
  }
}
