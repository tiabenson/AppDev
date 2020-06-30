//Created by Tia Benson

import 'package:flutter/material.dart';
import 'package:torch_compat/torch_compat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flashlight',
      debugShowCheckedModeBanner: false,  //eliminates debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool toggle = true; //determines if text shows on or off

  _onPressed() //change text when button is touched
  {
    setState(() {
      switch (toggle) {
        case true:
          {
            TorchCompat.turnOff();
            toggle = false;
          }
          break;

        case false:
          {
            TorchCompat.turnOn();
            toggle = true;
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: toggle == true ? Colors.white : Colors.black, //background color
        child: Center(
          child: FlatButton(
            child: Text(
              toggle == true ? 'ON' : 'OFF', //determine text
              style: TextStyle(
                  color: toggle == true ? Colors.green : Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: _onPressed, //goes to onPressed function
          ),
        ),
      ),
    );
  }
}
