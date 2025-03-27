import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_training/ui/mixins/widgets_binding_frame.dart';
import 'package:flutter_training/ui/weather/widgets/weather_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LaunchPage());
  }
}

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> with WidgetsBindingFrame {
  Future<void> _goWeatherPage() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    if (!mounted) {
      return;
    }
    await Navigator.of(
      context,
    ).push<void>(MaterialPageRoute(builder: (context) => const WeatherPage()));

    await _goWeatherPage();
  }

  @override
  void didEndOfFrameAction() {
    unawaited(_goWeatherPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}
