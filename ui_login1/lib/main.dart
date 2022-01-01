import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('haha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'We\'s so glad you\'re here!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Create your Over account so that you can save all your beautiful creations.',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20.0,
              ),
            ),
            Container(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
