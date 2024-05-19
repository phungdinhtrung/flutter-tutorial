import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/dog.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.indigoAccent,
              ),
              Text('NAME'),
              SizedBox(height: 10),
              Text('Chun-Li',
                  style: TextStyle(
                    color: Colors.teal,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30),
              Text('CURERNT NINJA LEVEL'),
              SizedBox(height: 10),
              Text('8',
                  style: TextStyle(
                    color: Colors.teal,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30),
              Row(children: <Widget>[
                Icon(Icons.email, color: Colors.blueGrey),
                SizedBox(width: 10),
                Text(
                  'phungdinhtrung@gmail.com',
                  style: TextStyle(color: Colors.blueGrey),
                )
              ])
            ]));
  }
}
