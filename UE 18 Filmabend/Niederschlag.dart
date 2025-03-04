void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': 0.0, 'rain': 3.8, 'wind': null},
  ];

  List<double?> temps = [];

  temps.add(weatherData[0]['temp']);
  temps.add(weatherData[1]['temp']);
  temps.add(weatherData[2]['temp']);

  double? avgTemp = (temps[0]! + temps[1]! + temps[2]!) / 3;
  print("Durchschnittstemperatur: $avgTemp");
}
