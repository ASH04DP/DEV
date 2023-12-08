import 'package:flutter/material.dart';
import 'package:todo/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WeatherPage> {
  //api key
  final _weatherService = WeatherService(apiKey);
  Weather? _weather;

  //fetch Weather

  //fetch Animations

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
