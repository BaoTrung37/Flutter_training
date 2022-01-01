import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

class WorldTime {
  String location; // location name for the UI
  String? time; // the time in that location
  String flag; // url to an asset flag incon
  String url; // location url for api endpoint
  bool? isDaytime; // true or false if daytime or not

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });
  // WorldTime.withoutTime(this.location, this.flag, this.url);

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);
      String datatime = data['datetime'];
      String offset = data['utc_offset'].toString().substring(1, 3);
      // print(datatime);
      // print(offset);
      DateTime now = DateTime.parse(datatime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time ';
    }
  }
}

// WorldTime instance =
//     WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
