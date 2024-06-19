import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin-data.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key, required this.title});

  final String title;

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';

  List<Text> getPickerItems() {
    List<Text> PickerItems = [];

    for (String currency in currenciesList) {
      var newItem = Text(currency, style: const TextStyle(color: Colors.white));
      PickerItems.add(newItem);
    }
    return PickerItems;
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
          mainAxisAlignment: MainAxisAlignment.start,
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
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          child: Container(
              height: 300.0,
              alignment: Alignment.center,
              child: CupertinoPicker(
                itemExtent: 32,
                onSelectedItemChanged: (selectedIndex) {
                  print(selectedIndex);
                },
                children: getPickerItems(),
              )),
        ));
  }
}
