import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_training/domain/use_case/weather/weather_forecast_use_case.dart';
import 'package:flutter_training/ui/core/themes/weather_svg.dart';
import 'package:flutter_training/ui/core/ui/result_dialog.dart';
import 'package:flutter_training/ui/weather/widgets/weather_icon.dart';
import 'package:flutter_training/utils/result.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherSvg? _weatherSvg;
  final _weatherUseCase = WeatherForecastUseCase();

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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          final weatherCondition = _weatherUseCase.getWeather();

                          switch (weatherCondition) {
                            case Ok<String>():
                              setState(() {
                                _weatherSvg = WeatherSvg.fromString(
                                  weatherCondition.success,
                                );
                              });
                            case Error<String>():
                              unawaited(
                                ResultDialog.show(
                                  context: context,
                                  title: 'title',
                                  result: weatherCondition,
                                ),
                              );
                          }
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
