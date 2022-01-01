import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';
  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Việt Nam', flag: 'vietnam.png', url: 'Asia/Ho_Chi_Minh');
    await instance.getTime();
    // print(instance.time);
    // setState(() {
    //   time = instance.time!;
    // });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
      ),
      backgroundColor: Colors.blue[900],
      body: SpinKitRing(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
