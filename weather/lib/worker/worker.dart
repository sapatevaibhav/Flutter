import 'dart:convert';
import 'package:http/http.dart';

class worker {
  String location = "Error finding location!",
      temperature = "Error finding location!",
      humidity = "Error finding location!",
      airSpeed = "Error finding location!",
      weatherr = "Error finding location!",
      description = "Error finding location!";
  worker({required this.location}) {
    location = this.location;
  }

  //   dynamic getTime() async {
//     // Get API data
//     // To fetch time from worldtimeapi

//     Response response = await get(
//         Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Kolkata"));
//     Map data = jsonDecode(response.body);
//     var date = (data["datetime"]).toString();
//     int contain = date.indexOf('T');

//     date = date.substring(0, contain);
//     print(date);
//   }

  Future<void> getWeather() async {
    // Fetch the data from API
    try {
      Response weather = await get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=af37589d237c4246eb7ec7a13e6daec9"));
      if (weather.statusCode == 200) {
        Map weather1 = jsonDecode(weather.body);

        // Fetching weather data from fetched data
        List weatherData = weather1['weather'];
        Map weatherMainData = weatherData[0];

        // Fetching temperature, humidity and air speed
        Map temp = weather1['main'];
        temperature = temp['temp'].toString();

        Map wind = weather1['wind'];
        airSpeed = wind['speed'].toString();
        humidity = temp['humidity'].toString();

        //Fetching description
        weatherr = weatherMainData['main'];
        description = weatherMainData['description'];
      } else {
        print('HTTP Error: ${weather.statusCode}');
      }
    } catch (e) {
      // Handle the error gracefully
      print('Error occurred: $e');
    }
  }
}
