import 'package:flutter/material.dart';
import 'package:instant_message/view/splashScreen.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context),
      home: SplashScreen(),
    );
  }
}