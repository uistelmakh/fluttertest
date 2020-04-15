import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "networking",
      home: HomePage(),
    );
  }
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
        backgroundColor: Colors.pinkAccent,
        title: Text("Networking"),
      ),
      body: titleSection(),
    );
  }
}

Widget titleSection() {
  return Container(
    child: Column(
      children: <Widget>[
        imageSection(),
        coordinateSection(),
        buttonSection(),
      ],
    ),
  );
}

// image
Container imageSection() {
  return Container(
    child: Image.network(
      'https://trrp.net/wordterrain/wp-content/uploads/2017/06/DSC0080Trinity-Dam-Lake-Alps.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    ),
  );
}

//  coordinates

Container coordinateSection() {
  return Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Oeschinen Lake Campgroud',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text("41"),
      ],
    ),
  );
}

//actionButton
Container _actionButton(Color color, IconData icon, String label) {
  return Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        )
      ],
    ),
  );
}

// button
Container buttonSection() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _actionButton(Colors.red, Icons.call, 'Call'),
        _actionButton(Colors.red, Icons.near_me, 'Route'),
        _actionButton(Colors.red, Icons.share, 'Share'),
      ],
    ),
  );
}
