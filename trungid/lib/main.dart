import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TrungCard(),
    );
  }
}

class TrungCard extends StatefulWidget {
  const TrungCard({Key? key}) : super(key: key);

  @override
  State<TrungCard> createState() => _TrungCardState();
}

class _TrungCardState extends State<TrungCard> {
  int trungLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Trung ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            trungLevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/lananh.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[300],
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Trung",
              style: TextStyle(
                color: Colors.yellow[400],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Current Level",
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$trungLevel',
              style: TextStyle(
                color: Colors.yellow[400],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'trung372k@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
