import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'App Bar Title',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.green[900],
          ),
          body: const Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green[900],
            child: const Icon(
              Icons.add_alarm,
              color: Colors.white,
            ),
          )),
    ));
