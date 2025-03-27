import 'package:flutter/material.dart';
import 'package:flutter_training/ui/core/themes/weather_svg.dart';
import 'package:flutter_training/ui/weather/widgets/weather_icon.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherSvg? _weatherSvg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(aspectRatio: 1, child: WeatherIcon(svg: _weatherSvg)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '** ℃',
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge?.copyWith(color: Colors.blue),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '** ℃',
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge?.copyWith(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Close'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          final yumemiWeather = YumemiWeather();
                          final weatherCondition =
                              yumemiWeather.fetchSimpleWeather();

                          setState(() {
                            _weatherSvg = WeatherSvg.fromString(
                              weatherCondition,
                            );
                          });
                        },
                        child: const Text('Reload'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
