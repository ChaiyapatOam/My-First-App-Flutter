import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("My First App By ChaiyapatOam"), centerTitle: true),
            body: Home()));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var a = TextEditingController();
  var b = TextEditingController();
  var result = "----------Result----------";
  var result1 = "----------Result1--------";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "กำลังสองสมบูรณ์\nผลบวกกำลังสองของAและB",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.lightBlue),
              ),
            ),
            Icon(
              Icons.add_comment,
              size: 30,
              color: Colors.lightGreen[600],
            )
          ],
        ),
        Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              controller: a,
              decoration:
                  InputDecoration(labelText: "A", border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              controller: b,
              decoration:
                  InputDecoration(labelText: "B", border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.all(50),
            child: ElevatedButton(
              onPressed: () {
                var v1 = int.parse(a.text);
                var v2 = int.parse(b.text);
                var c = v1 + v2;
                var cal = c * c;
                var c1 = v1 - v2;
                var cal1 = c1 * c1;
                //print("Cal:$cal ");
                setState(() {
                  result = "ผลบวกกำลังสอง=$cal";
                  result1 = "ผลต่างกำลังสอง=$cal1";
                });
              },
              child: Row(
                children: [Icon(Icons.send), Text('     Submit')],
              ),
            )),
        Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              result,
              style: TextStyle(fontSize: 30.0),
            )),
        Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              result1,
              style: TextStyle(fontSize: 30.0),
            )),
        Padding(
            padding: EdgeInsets.all(50), child: Image.asset('assets/2ab.jpg')),
        Padding(
            padding: EdgeInsets.all(50), child: Image.asset('assets/1.jpg')),
        Padding(
            padding: EdgeInsets.all(50), child: Image.asset('assets/2.jpg')),
        Padding(
            padding: EdgeInsets.all(50), child: Image.asset('assets/3.jpg')),
        Padding(
            padding: EdgeInsets.all(50), child: Image.asset('assets/4.jpg')),
      ],
    );
  }
}
