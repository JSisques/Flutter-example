import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{

  static Route<dynamic> route(){
    return MaterialPageRoute(
      builder: (context) => LoginScreen()
      );
  }


  @override
  LoginScreenState createState() => LoginScreenState();

}

class LoginScreenState extends State<LoginScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        //Boton de la izquierda (Menu)
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print("Pressed left button appbar");
            }),
        //Botones de acceso rapido derecha
        actions: [
          IconButton(
            icon: Icon(Icons.settings), 
            onPressed: (){
              print("Pressed right button appbar");
            })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: CustomListView(context),
      
    );
  }

  Widget CustomListView(BuildContext context){

    // backing data
  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

    return ListView.builder(
      itemCount: europeanCountries.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.card_travel),
          title: Text(europeanCountries[index]),
          subtitle: Text(europeanCountries[index]),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            print("Tapped on " + europeanCountries[index]);
          },
        );
      }
      );
  }
}