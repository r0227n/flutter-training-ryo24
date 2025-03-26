enum WeatherSvg {
  cloudy('assets/images/cloudy.svg'),
  rainy('assets/images/rainy.svg'),
  sunny('assets/images/sunny.svg');

  const WeatherSvg(this.path);

  final String path;

  static WeatherSvg? fromString(String value) {
    if (!WeatherSvg.values.map((e) => e.name).contains(value)) {
      return null;
    }

    return WeatherSvg.values.byName(value);
  }
}
