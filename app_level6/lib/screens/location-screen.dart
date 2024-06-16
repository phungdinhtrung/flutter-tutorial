import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  final weatherData;
  const LocationScreen({super.key, this.weatherData});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Location Screen'),
    );
  }
}
