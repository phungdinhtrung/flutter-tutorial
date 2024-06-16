import 'package:flutter/material.dart';
import '../services/weather.dart';
import 'city-screen.dart';

class LocationScreen extends StatefulWidget {
  final weatherData;
  const LocationScreen({super.key, this.weatherData});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temperature = 0;
  String cityName = '';
  String weatherIcon = '';
  String weatherMessage = '';

  @override
  void initState() {
    super.initState();
    var weatherData = widget.weatherData;
    updateUI(weatherData);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        cityName = '';
        weatherIcon = '';
        weatherMessage = 'Unable to get weather data';
        return;
      }

      temperature = weatherData['main']['temp'].toInt();
      cityName = weatherData['name'];
      int condition = weatherData['weather'][0]['id'];
      weatherIcon = WeatherModel().getWeatherIcon(condition);
      weatherMessage = WeatherModel().getMessage(temperature);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Screen',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                var cityName = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const InputCity();
                }));
                print(cityName);
                if (cityName != null) {
                  var weatherData =
                      await WeatherModel().getCityWeather(cityName);
                  updateUI(weatherData);
                }
              },
              child: const Text('Choose city!'),
            ),
            Text('Temperature: $temperature °C $weatherIcon'),
            Text(
                'City: $cityName\n Weather: $weatherMessage\n Icon: $weatherIcon'),
          ],
        ),
      ),
    );
  }
}
