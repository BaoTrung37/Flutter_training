import 'package:flutter/material.dart';
import 'package:nhin_lai_mot_nam/checkbox_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;
  final messages = [
    // CheckBoxState(titleFirst: 'Mua được ô tô', titleChange: 'Mua được ô'),
    CheckBoxState(
        titleFirst: 'Tiền tiết kiệm 100.000.000 đ',
        titleChange: 'Tiền tiết kiệm 100.000 đ'),
    CheckBoxState(
        titleFirst: 'Năm nay có người yêu <3',
        titleChange: 'Năm sau sẽ có người yêu <3'),
    CheckBoxState(titleFirst: 'Có được học bổng', titleChange: 'Tạch học bổng'),
    CheckBoxState(
        titleFirst: 'Được đi thực tập', titleChange: 'Được đi thực tập'), 
    CheckBoxState(
        titleFirst: 'Đọc 10 cuốn sách', titleChange: 'Đọc 1 cuốn sách'),
    CheckBoxState(
        titleFirst: 'Sống một cách an nhàn', titleChange: 'Sống'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              'assets/images/Hinh-Nen-Tet-2021-DT-5.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Spacer(
                flex: 4,
              ),
              Center(
                child: Text(
                  'Nhìn lại một năm 2021',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  ...messages.map((e) => buildSingleCheckBox(e)).toList(),
                ],
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSingleCheckBox(CheckBoxState checkBoxState) => CheckboxListTile(
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.leading,
        value: checkBoxState.value,
        title: Text(
          checkBoxState.title ?? checkBoxState.titleFirst,
          // _title ?? checkBoxState.title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onChanged: (value) => setState(() {
          checkBoxState.value = value!;
          checkBoxState.title =
              value ? checkBoxState.titleChange : checkBoxState.titleFirst;
        }),
      );
}
