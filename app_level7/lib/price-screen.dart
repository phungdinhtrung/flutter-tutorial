import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'coin-data.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key, required this.title});

  final String title;

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';

  DropdownButton<String> androidPicker() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      items: dropdownItems,
      onChanged: (String? value) {
        setState(() {
          selectedCurrency = value.toString();
        });
      },
      value: selectedCurrency, // Default value
      icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
      dropdownColor: Theme.of(context).colorScheme.primary,
      style: const TextStyle(color: Colors.white),
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];

    for (String currency in currenciesList) {
      var newItem = Text(currency, style: const TextStyle(color: Colors.white));
      pickerItems.add(newItem);
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).colorScheme.secondary,
            ),
            alignment: Alignment.center,
            child: const Text(
              '1 BTC = ? USD',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.primary,
            height: 150.0,
            child: Platform.isIOS ? iOSPicker() : androidPicker(),
          ),
        ],
      ),
    );
  }
}
