enum WeatherSvg {
  cloudy('assets/images/cloudy.svg'),
  rainy('assets/images/rainy.svg'),
  sunny('assets/images/sunny.svg');

  const WeatherSvg(this.path);

  final String path;
}
