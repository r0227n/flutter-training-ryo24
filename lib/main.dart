import 'package:flutter/material.dart';
import 'package:flutter_training/ui/weather/widgets/weather_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WeatherPage());
  }
}
