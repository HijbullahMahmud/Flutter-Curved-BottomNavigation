import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bottom Navigation Example",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Navigation Demo", style: TextStyle(color: Colors.black,),
        ),
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Natigation demo",
              style: TextStyle(color: Colors.white, fontSize: 22),),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        /*preselected item*/
        index: 1,
        items: <Widget>[
          Icon(Icons.live_tv, color: Colors.black, size: 20,),
          Icon(Icons.home, color: Colors.black, size: 20,),
          Icon(Icons.radio, color: Colors.black, size: 20,),
        ],
        onTap: (index) {
          debugPrint("Tapped: $index");
        },
      ),
    );
  }
}

