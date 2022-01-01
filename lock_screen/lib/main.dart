import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0F1C),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Center(
                child: Text(
                  'Enter your password',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ThanhPass(),
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // CircleAvatar(
                    //   radius: MediaQuery.of(context).size.width * 0.08,
                    //   backgroundColor: Colors.amber,
                    //   // backgroundColor: Color(0xFF0E0F1C),
                    //   child: Text(
                    //     '1',
                    //     style: TextStyle(fontSize: 24, color: Colors.white),
                    //   ),
                    // ),
                    // CircleAvatar(
                    //   radius: MediaQuery.of(context).size.width * 0.08,
                    //   backgroundColor: Colors.amber,
                    //   // backgroundColor: Color(0xFF0E0F1C),
                    //   child: Text(
                    //     '1',
                    //     style: TextStyle(fontSize: 24, color: Colors.white),
                    //   ),
                    // ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ThanhPass extends StatelessWidget {
  const ThanhPass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HinhTron(),
        SizedBox(
          width: 20,
        ),
        HinhTron(),
        SizedBox(
          width: 20,
        ),
        HinhTron(),
        SizedBox(
          width: 20,
        ),
        HinhTron()
      ],
    );
  }
}

class HinhTron extends StatelessWidget {
  final bool isCheck;

  const HinhTron({
    Key? key,
    this.isCheck = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: Colors.white70,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: isCheck ? Colors.white70 : Colors.grey[600],
      ),
    );
  }
}
