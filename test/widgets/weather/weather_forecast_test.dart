import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/ui/weather/view_model/weather_view_model.dart';
import 'package:flutter_training/ui/weather/widgets/weather_forecast.dart';
import 'package:flutter_training/ui/weather/widgets/weather_page.dart';

void main() {
  testWidgets('Find WeatherForecast Widget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProviderScope(child: WeatherPage())),
    );

    expect(find.byType(WeatherForecast), findsOneWidget);
  });

  testWidgets('WeatherForecast State Check', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: ProviderScope(child: WeatherPage())),
    );

    final element = tester.element(find.byType(WeatherForecast));
    final container = ProviderScope.containerOf(element);

    final nullState = find.byWidgetPredicate((widget) {
      if (widget is WeatherForecast) {
        return widget.weather != null;
      }

      return false;
    });

    expect(nullState, findsNothing);

    container.read(weatherViewModelProvider.notifier).updateWeather();
    await tester.pumpWidget(
      const MaterialApp(home: ProviderScope(child: WeatherPage())),
    );

    final hasState = find.byWidgetPredicate((widget) {
      if (widget is WeatherForecast) {
        return widget.weather != null;
      }

      return false;
    });
    expect(hasState, findsOneWidget);

    await tester.pumpAndSettle();
  });
}
