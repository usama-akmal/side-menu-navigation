import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NavigationPage();

}

class _NavigationPage extends State<NavigationPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
          color: Colors.teal,
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              RaisedButton(
                child: Text("Back"),
                onPressed: (){
            Navigator.pop(context);      
                },
                ),
            ],
          ),
      ),
    );
  }

}