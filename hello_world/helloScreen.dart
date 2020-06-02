import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget
{
  @override

  Widget build(BuildContext context)
  {
    return Scaffold(   //presents screen to user, gives ability to use app bar
      appBar: AppBar( //Navigation bar
        title: Text('Hello World'),
        centerTitle: true,
      ),
      body: Text('Hello world! Welcome!', textAlign: TextAlign.center));
  }
}

 