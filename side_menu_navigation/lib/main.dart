import 'package:flutter/material.dart';
import 'package:side_menu_navigation/navigation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: main()
    );
    
  }

  Widget main(){
    return Container(
        //color: Color.fromRGBO(236,240,241 ,1),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            Colors.indigo[800],
                            Colors.indigo[700],
                            Colors.indigo[600],
                            Colors.indigo[400],
                          ],
                        ),
                      ),
                  child: ButtonTheme(
                    minWidth: 55,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MyCustomRoute(builder:(context) => NavigationPage()));
                        },
                      child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: SizedBox(
                                height: 3,
                                width: 15,
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left:10),
                              child: SizedBox(
                                height: 3,
                                width: 15,
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Trip Summary",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
  }

}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (settings.isInitialRoute)
      return child;
    // Fades between routes. (If you don't want any animation, 
    // just return child.)
    //return new FadeTransition(opacity: animation, child: child);
    return child;
  }
}