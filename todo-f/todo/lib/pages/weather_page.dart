import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/services/weather_service.dart';
import 'package:todo/models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WeatherPage> {
  //api key
  final _weatherService = WeatherService('88220b6cf8cfcb3abba0c715bcc04ee6');
  Weather? _weather;

  //fetch Weather
  _fetchWeather() async {
    //current City
    String cityName = await _weatherService.getCurrentCity();

    //get Weather for City
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    //errors
    catch (e) {
      print(e);
    }
  }
  //fetch Animations

  //init State
  @override
  void initState() {
    super.initState();
    //fetch Weather
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //CityName
            Text(_weather?.cityName ?? "City..."),

            //animations
            Lottie.asset('asset/Cloudy.json'),

            //Weahter
            Text('${_weather?.temperature.round()}°C')
          ],
        ),
      ),
    );
  }
}
