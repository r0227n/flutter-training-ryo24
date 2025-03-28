import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/ui/core/ui/result_dialog.dart';
import 'package:flutter_training/ui/weather/view_model/weather_view_model.dart';
import 'package:flutter_training/ui/weather/widgets/weather_icon.dart';
import 'package:flutter_training/utils/result.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherViewModelProvider);

    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: WeatherIcon(svg: weather?.weatherCondition),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${weather?.minTemperature ?? '**'} ℃',
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge?.copyWith(color: Colors.blue),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${weather?.maxTemperature ?? '**'} ℃',
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
                          try {
                            ref
                                .read(weatherViewModelProvider.notifier)
                                .updateWeather(
                                  date: DateTime.parse(
                                    '2020-04-01T12:00:00+09:00',
                                  ),
                                );
                          } on Exception catch (e) {
                            unawaited(
                              ResultDialog.show<Weather>(
                                context: context,
                                title: 'title',
                                result: Result.error(e),
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
