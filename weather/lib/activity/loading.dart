import 'package:flutter/material.dart';
import 'package:weather/worker/worker.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

String temperature = "",
    humidity = "",
    airSpeed = "",
    weatherr = "",
    description = "";

class _LoadingState extends State<Loading> {
  void startApp() async {
    worker instance = worker(location: "beed");
    // Wait to get the weather data
    await instance.getWeather();

    setState(() {
      // Fetch data from the worker and store it into variables
      temperature = instance.temperature;
      humidity = instance.humidity;
      airSpeed = instance.airSpeed;
      weatherr = instance.weatherr;
      description = instance.description;

      Navigator.pushReplacementNamed(context, '/home', arguments: {
        // To call the home 7rame as well as throw the grabbed data to it.
        "temp": temperature,
        "humi": humidity,
        "air": airSpeed,
        "weather": weatherr,
        "desc": description
      });
    });
  }

  @override
  void initState() {
    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Text("Loading!")));
  }
}
