void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  List<double?> temps = [];

  temps.add(weatherData[0]['temp']);
  temps.add(weatherData[1]['temp']);
  temps.add(weatherData[2]['temp']);

  List<double?> rains = [];

  rains.add(weatherData[0]['rain']);
  rains.add(weatherData[1]['rain']);
  rains.add(weatherData[2]['rain']);

  List<double?> winds = [];
  winds.add(weatherData[0]['wind']);
  winds.add(weatherData[1]['wind']);
  winds.add(weatherData[2]['wind']);

  if (temps.contains(null)) {
    temps.add(0.0);
  }
  if (rains.contains(null)) {
    rains.add(0.0);
  }
  if (winds.contains(null)) {
    winds.add(0.0);
  }

  double? avgTemp = (temps[0] ?? temps[1] ?? temps[2])! / 3;
  double? avgRain = (rains[0] ?? rains[1] ?? rains[2])! / 3;
  double? avgWind = (winds[0] ?? winds[1] ?? winds[2])! / 3;
  print(
    "Durchschnittstemperatur: $avgTemp"
            "°C" +
        " " +
        "Durchschnitts Niederschlag: $avgRain"
            "mm" +
        " " +
        "Durchschnittliche Windgeschwindigkeit: $avgWind"
            "km/h",
  );
}
