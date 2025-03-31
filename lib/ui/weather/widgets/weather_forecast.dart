import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/ui/weather/widgets/weather_icon.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast(
    this.weather, {
    super.key,
    this.minTemperatureColor = Colors.blue,
    this.maxTemperatureColor = Colors.red,
    this.nullableText = '**',
  });

  final Weather? weather;
  final Color minTemperatureColor;
  final Color maxTemperatureColor;
  final String nullableText;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  '${weather?.minTemperature ?? nullableText} ℃',
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(color: minTemperatureColor),
                ),
              ),
              Expanded(
                child: Text(
                  '${weather?.maxTemperature ?? nullableText} ℃',
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(color: maxTemperatureColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Weather?>('weather', weather));
    properties.add(ColorProperty('minTemperatureColor', minTemperatureColor));
    properties.add(ColorProperty('maxTemperatureColor', maxTemperatureColor));
    properties.add(StringProperty('nullableText', nullableText));
  }
}
