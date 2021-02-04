import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:instant_message/User.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHome()
    );
  }
}

class MySplash extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SplashScreen.navigate(
      name: "assets/avocado.png",
      next: (context) => MyHome(),
      backgroundColor: Colors.red,
      until: () => Future.delayed(Duration(seconds: 5)),
      startAnimation: "splash",
      );
  }
}

class MyHome extends StatelessWidget {
  var context;
  @override
  Widget build(BuildContext context) {
    context = this.context;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instant Message"),
          centerTitle: false,
          backgroundColor: Colors.blue,
        ),
        body: CustomListView(context),
        floatingActionButton: FloatingActionButton(
          onPressed: (){}, //No hace nada
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget CustomListView(BuildContext context){

  var user1 = new User("John1", "Doe", Icons.add);
  var user2 = new User("John2", "Doe", Icons.radio);
  var user3 = new User("John3", "Doe", Icons.access_alarm_rounded);
  var user4 = new User("John4", "Doe", Icons.youtube_searched_for);
  var user5 = new User("John5", "Doe", Icons.accessible);


  //Backend data
  final data = [user1, user2, user3, user4, user5];
  
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index){
        return ListTile(
          leading: Icon(data[index].icon),
          title: Text(data[index].name),
          subtitle: Text(data[index].lastName),
          onTap: (){
            showDialog(
              context: context,
              barrierDismissible: true,
              builder: (_) => AlertDialog(
                   title: Text("Hello"),
                   content: Text("Content"),
                   actions: [
                      FlatButton(
                        onPressed: () => Navigator.of(context, rootNavigator: true).pop('dialog'), //Para cerrar el alert dialog
                        child: Text("No")),
                      FlatButton(
                        onPressed: () => Navigator.of(context, rootNavigator: true).pop('dialog'), //Para cerrar el alert dialog
                        child: Text("Yes")),
                   ], 
               ),);
          },
        );
      });
}
