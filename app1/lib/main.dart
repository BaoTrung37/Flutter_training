import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10.0), // top, right, bottom, left
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Programming tutorials Channel",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Trung là đáng yêu nhất vũ trụ này",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          Text(
            " 100",
            style: TextStyle(fontSize: 30.0, color: Colors.blue),
          ),
        ],
      ),
    );
    Widget buildButton(IconData icon, String buttonText) {
      final Color colorText = Colors.blue;
      return Column(
        children: [
          Icon(
            icon,
            color: colorText,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 15.0,
              color: colorText,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      );
    }

    Widget fourButtonsSelection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      ),
    );
    return MaterialApp(
        title: "",
        home: Scaffold(
          appBar: AppBar(
            title: Text("flutter app"),
          ),
          body: ListView(
            children: [
              Image.asset(
                "assets/trung.jpg",
                fit: BoxFit.cover,
              ),
              titleSection,
              fourButtonsSelection,
            ],
          ),
        ));
  }
}
