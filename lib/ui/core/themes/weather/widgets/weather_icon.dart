import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/ui/core/themes/weather_svg.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({super.key, this.svg});

  final WeatherSvg? svg;

  @override
  Widget build(BuildContext context) {
    return svg != null ? SvgPicture.asset(svg!.path) : const Placeholder();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<WeatherSvg?>('svg', svg));
  }
}
