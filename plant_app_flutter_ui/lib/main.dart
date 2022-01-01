import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _gioiTinh = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App 4'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Male'),
            leading: Radio(
              value: 0,
              groupValue: _gioiTinh,
              onChanged: (newvalue) {},
            ),
          ),
          ListTile(
            title: Text('Female'),
            leading: Radio(
              value: 1,
              groupValue: _gioiTinh,
              onChanged: (newvalue) {},
            ),
          ),
        ],
      ),
    );
  }
}
